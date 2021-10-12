%{ (* -*- tuareg -*- *)

  open HopixAST
  open Position

%}

%token EOF
%token <Mint.t> INT
%token <string> ID STRING CID TVAR
%token <char> CHAR
%token COMMA COLONLINE AND DOT FOR FROM TO IN
%token LPAR RPAR LBRACK RBRACK LSQR RSQR 
%token LET FUN EXTERN REF WILDCARD TYPE EDOT IDOT
%token PLUS MINUS DIV MULT SUPIDOT INFIDOT EQUALS INF SUP PIPE
%token IF THEN ELSE OPAND OPOR EQIDOT SUPEQIDOT INFEQIDOT DOUBLEDOTEQ
%token RARROW WHILE SWITCH SEMICOLON ANSLASH POR PAND

%start<HopixAST.t> program

%right SEMICOLON 
%left REF
%right RARROW
%left DOUBLEDOTEQ
%left MULT
%right EDOT
%left DOT


%%

program: v=located(def)* EOF
{
  v
}

(*--------------------PROGRAMME----------------------------*)

def: 
    TYPE t=located(typecons) 
    l=loption(delimited(INF,
      separated_nonempty_list(COMMA, located(typevar)),
    SUP))
    EQUALS s=tdef
    { DefineType (t, l, s) }
  | TYPE t=located(typecons) 
    l=loption(delimited(INF,
      separated_nonempty_list(COMMA, located(typevar)),
    SUP))
    { DefineType (t, l, Abstract) }
  | EXTERN id=located(identifier) COLONLINE ts=located(tscheme)
    { DeclareExtern (id,ts) }
  | v = vdef { DefineValue v }
  | error 
    { 
      let pos=Position.lex_join $startpos $endpos
      in Error.error "parsing" pos "Syntax error."
    }

tdef:
    PIPE? l=separated_nonempty_list(PIPE, 
    pair(located(constructor) ,
    loption(delimited(LPAR, separated_nonempty_list(COMMA, located(ty)), RPAR))
    ))
    { 
      DefineSumType (l) 
    }
  | l=delimited(
    LBRACK, 
    separated_nonempty_list(COMMA, separated_pair(located(label), COLONLINE, located(ty))), 
    RBRACK)
    { DefineRecordType (l) }


vdef:
    LET x=located(identifier) 
    t=option(preceded(COLONLINE,located(tscheme))) 
    EQUALS y=located(expression)
    {
      SimpleValue (x, t, y)  (*UTILISER X? OU OPTION(X)  pour option*) 
    }
  | FUN l=separated_nonempty_list(AND, fundef_aux)
    {
      RecFunctions(l)
    }
 
fundef_aux:
    id=located(identifier) 
    l=option(preceded(COLONLINE,located(tscheme)))
    f=fundef 
      {
        (id, l, f)
      }

fundef: 
    p=located(pattern) EQUALS e=located(expression)
      { FunctionDefinition(p, e) }

(*---------------------- TYPE ------------------------------*)
  
ty:
    t=typecons 
    l=loption(delimited(INF,separated_nonempty_list(COMMA, located(ty)),
    SUP))
    { TyCon(t, l) }
  | t1=located(ty) RARROW t2=located(ty)
    { TyArrow (t1,t2) }
  | t1=located(ty) MULT t2=located(ty)
    { TyTuple(t1::[t2]) }
  | t=typevar 
    { TyVar t }
 
tscheme:
    l=loption(delimited(LSQR,nonempty_list(located(typevar)),
    RSQR)) t=located(ty)
    {  ForallTy (l,t) }

(*----------------------EXPRESSION--------------------------*)
expression:
      l=located(literal) 
      { Literal l }
    | id=located(identifier) l=option(delimited(INF,separated_list(COMMA,located(ty)),SUP))
      { Variable(id, l) }
    | c=located(constructor)
      l1=option(delimited(INF,separated_list(COMMA,located(ty)),SUP))
      l2=loption(delimited(LPAR,separated_list(COMMA,located(expression)), RPAR))
      { Tagged (c, l1, l2) }
    | LBRACK l1=separated_nonempty_list(COMMA, separated_pair(located(label), EQUALS, located(expression))) RBRACK
      l2=option(delimited(INF,separated_list(COMMA,located(ty)),SUP))
      { Record( l1, l2) }
    | e=located(expression) DOT l=located(label)
      { Field (e, l) }
    | LPAR l=separated_nonempty_list(COMMA, located(expression)) RPAR
      { Tuple (l) }
    (* TODO : MOINS SIX POINTS DE SCORE ????
    | e1=located(expression) SEMICOLON e2=located(expression)
      { Sequence(e1::[e2]) }*)
    | v=vdef SEMICOLON e=located(expression)
      { Define(v, e) }
    | ANSLASH p=located(pattern) RARROW e=located(expression)
      { Fun (FunctionDefinition(p,e)) }
    (*| e1=located(expression) e2=located(expression)
      { Apply (e1, e2) }*)
    | REF e=located(expression)
      { Ref(e) }
    | e1=located(expression) DOUBLEDOTEQ e2=located(expression)
      { Assign (e1, e2) }
    | EDOT e1=located(expression)
      { Read(e1) }
    | SWITCH 
      LPAR e=located(expression) RPAR 
      LBRACK 
        b=preceded(PIPE?,separated_nonempty_list(PIPE, located(branch)))
      RBRACK
      { Case(e,b) }
    | IF LPAR e1=located(expression) RPAR
      THEN LBRACK e2=located(expression) RBRACK
      ELSE LBRACK e3=located(expression) RBRACK
      {
        IfThenElse (e1, e2, e3)
      }
    | WHILE LPAR e1=located(expression) RPAR 
      LBRACK e2=located(expression) RBRACK
      {
        While(e1, e2)
      }
    | FOR vID=located(identifier) 
      FROM LPAR e1=located(expression) RPAR
      TO 
      LPAR e2=located(expression) RPAR 
      LBRACK e3=located(expression) RBRACK
      {
        For(vID, e1, e2, e3)
      }
    | LPAR e=located(expression) COLONLINE t=located(ty) RPAR
      { TypeAnnotation(e, t) }
    
(*---------------- DEFINITIONS AUXILIAIRES --------------*)

(*binop:
    PLUS        { LString "+" }
  | MINUS 
  | MINUS       {     }
  | MULT        {     }
  | DIV         {     }
  | OPAND       {     }
  | OPOR        {     }
  | EQIDOT      {     }
  | INFEQIDOT   {     }
  | SUPEQIDOT   {     }
  | INFIDOT     {     }
  | SUPIDOT     {     }
  | DOUBLEDOTEQ {     }*)

branch:
    p=located(pattern) RARROW e=located(expression)
    { Branch (p, e) }
      
(*--------------------- PATTERN -------------------------*)

pattern:
    id=located(identifier)    { PVariable(id) }
  | WILDCARD                  { PWildcard }
  (*TODO :  obligé de matcher les parenthèses *)
  | LPAR p=located(pattern) COLONLINE t=located(ty) RPAR
    { PTypeAnnotation(p,t) }
  | l=located(literal)
    { PLiteral (l) }
  | c=located(constructor)
    l1=option(delimited(INF,separated_nonempty_list(COMMA, located(ty)),SUP))
    l2=loption(delimited(LPAR,separated_nonempty_list(COMMA, located(pattern)),RPAR))
    { PTaggedValue (c, l1, l2) }
  | LBRACK 
    l1=separated_nonempty_list(COMMA, separated_pair(located(label), EQUALS, located(pattern))) 
    RBRACK
    l2=option(delimited(INF,separated_nonempty_list(COMMA, located(ty)),SUP))
    { PRecord (l1, l2) }
  | LPAR l=separated_nonempty_list(COMMA, located(pattern)) RPAR
    { PTuple (l) }
    (* TODO : obligé de matcher les parenthèses *)
  | LPAR p1=located(pattern) POR p2=located(pattern) RPAR
    { POr(p1::[p2]) }
    (* TODO : obligé de matcher les parenthèses *)
  | LPAR p1=located(pattern) PAND p2=located(pattern) RPAR
    { PAnd(p1::[p2]) }

(*------------------------ FINAL ------------------------*)

literal:
    i=INT     { LInt i }
  | c=CHAR    { LChar c }
  | s=STRING  { LString s }

identifier:
    id=ID { Id id }
  
constructor:
    c=CID { KId c }

typecons:
    t=ID { TCon t }
 
typevar:
    v=TVAR { TId v }
 
label:
    l=ID { LId l }

%inline located(X): x=X {
  Position.with_poss $startpos $endpos x
}



(* pour faire tourner les tests : dans tests : make "nom du test"*)
(* dans l'enoncé : dune exec ./src/flap.exe *)