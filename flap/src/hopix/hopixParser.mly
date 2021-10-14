%{ (* -*- tuareg -*- *)

  open HopixAST
  open Position

%}

%token EOF
%token <Mint.t> INT
%token <string> ID STRING CID TVAR
%token <char> CHAR
(* -------- Ponctuation -------- *)
%token COMMA COLONLINE AND DOT SEMICOLON
(* --------- Delimiter --------- *)
%token LPAR RPAR LBRACK RBRACK LSQR RSQR
(* --------- Condition --------- *)
%token FOR FROM TO IF THEN ELSE WHILE DO UNTIL SWITCH
(* --------- Key-words --------- *)
%token LET FUN EXTERN REF TYPE 
(* --------- Comparison -------- *)
%token SUP INF SUPIDOT INFIDOT SUPEQIDOT INFEQIDOT DOUBLEDOTEQ EQIDOT
(* ---------- Operator --------- *)
%token PLUS MINUS DIV MULT OPAND OPOR EQUALS
(* ----------- Other ----------- *)
%token RARROW ANSLASH POR PAND EDOT WILDCARD

%start<HopixAST.t> program

%left REF
%right RARROW
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
    l=loption(delimited(INF,separated_nonempty_list(COMMA, located(typevar)),SUP))
    EQUALS s=tdef
    { DefineType (t, l, s) }
  | TYPE t=located(typecons) 
    l=loption(delimited(INF, separated_nonempty_list(COMMA, located(typevar)), SUP))
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
    POR? l=separated_nonempty_list(POR, 
    pair(located(constructor) ,
    loption(delimited(LPAR, separated_nonempty_list(COMMA, located(ty)), RPAR))
    ))
    { 
      DefineSumType (l) 
    }
  | LBRACK 
    l= separated_nonempty_list(COMMA, separated_pair(located(label), COLONLINE, located(ty)))
    RBRACK
    { DefineRecordType (l) }

vdef:
    LET p=polydef_val(located(expression))
    { SimpleValue (p) }
  | FUN l=separated_nonempty_list(AND, polydef_fun(fundef))
    { RecFunctions(l) }

fundef: 
    p=located(pattern) EQUALS e=located(expression)
    { FunctionDefinition(p, e) }

polydef_val(A):
    id=located(identifier) 
    l=option(preceded(COLONLINE,located(tscheme)))
    EQUALS a=A
    { (id, l, a) }

polydef_fun(A):
    l=option(preceded(COLONLINE,located(tscheme)))
    id=located(identifier)
    EQUALS a=A
    { (id, l, a) }

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
    e1=located(expression_assign) SEMICOLON e2=located(expression)
    { Sequence(e1::[e2]) }
  | v=expression_vdef SEMICOLON e=located(expression)
    { Define(v, e) }
  | ANSLASH p=located(pattern) RARROW e=located(expression)
    { Fun (FunctionDefinition(p,e)) }
  | e=expression_assign
    { e }

expression_vdef:
    LET p=polydef_val(located(expression_let))
    { SimpleValue (p) }
  | FUN l=separated_nonempty_list(AND, polydef_fun(fundef))
    { RecFunctions(l) }

expression_let:
    v=expression_vdef SEMICOLON e=located(expression_let)
    { Define (v, e) }
  | e=expression_assign
    { e }

expression_assign:
    e1=located(expression_assign) DOUBLEDOTEQ e2=located(expression_binop)
    { Assign (e1, e2) }
  | e=expression_binop
    { e }

expression_binop:
     e1=located(bin_expr) e2=located(expression_binop) 
    { Apply(e1, e2) }
  | e=expression_aux
      { e }

bin_expr:
    | expr=located(expression_aux) bin=located(bin_var)
      { Apply(bin, expr) }

expression_aux:
    l=located(literal) 
    { Literal l }
  | id=located(identifier) l=option(delimited(INF,separated_list(COMMA,located(ty)),SUP))
    { Variable(id, l) }
  | c=located(constructor)
    l1=option(delimited(INF,separated_list(COMMA,located(ty)),SUP))
    l2=loption(delimited(LPAR,separated_list(COMMA,located(expression_aux)), RPAR))
    { Tagged (c, l1, l2) }
  | LBRACK l1=separated_nonempty_list(COMMA, separated_pair(located(label), EQUALS, located(expression_aux))) RBRACK
    l2=option(delimited(INF,separated_list(COMMA,located(ty)),SUP))
    { Record( l1, l2) }
  | e=located(expression_aux) DOT l=located(label)
    { Field (e, l) }
  | LPAR l=separated_nonempty_list(COMMA, located(expression_aux)) RPAR
    { Tuple (l) }
  (*| e1=located(expression_aux) e2=located(expression_aux)
    { Apply (e1, e2) }*)
  | REF e=located(expression_aux)
    { Ref(e) }
  | EDOT e1=located(expression_aux)
    { Read(e1) }
  | SWITCH 
    LPAR e=located(expression_aux) RPAR 
    LBRACK 
      b=preceded(POR?,separated_nonempty_list(POR, located(branch)))
    RBRACK
    { Case(e,b) }
  | IF LPAR e1=located(expression_aux) RPAR
    THEN LBRACK e2=located(expression_aux) RBRACK
    ELSE LBRACK e3=located(expression_aux) RBRACK
    {
      IfThenElse (e1, e2, e3)
    }
  | DO LBRACK e1=located(expression_aux) RBRACK
    UNTIL LPAR e2=located(expression_aux) RPAR
    { While(e2, e1) }
  | WHILE LPAR e1=located(expression_aux) RPAR 
    LBRACK e2=located(expression_aux) RBRACK
    {
      While(e1, e2)
    }
  | FOR vID=located(identifier) 
    FROM LPAR e1=located(expression_aux) RPAR
    TO 
    LPAR e2=located(expression_aux) RPAR 
    LBRACK e3=located(expression_aux) RBRACK
    {
      For(vID, e1, e2, e3)
    }
  | LPAR e=located(expression_aux) COLONLINE t=located(ty) RPAR
    { TypeAnnotation(e, t) }

   
(*---------------- DEFINITIONS AUXILIAIRES --------------*)

bin_var:
    | b=located(binop)
    { Variable(b, None) }


binop:
    PLUS        { Id "`+`" }
  | MINUS       { Id "`-`" }
  | MULT        { Id "`*`" }
  | DIV         { Id "`/`" }
  | OPAND       { Id "`&&`" }
  | OPOR        { Id "`||`" }
  | EQIDOT      { Id "`=?`" }
  | INFEQIDOT   { Id "`<=?`" }
  | SUPEQIDOT   { Id "`>=?`" }
  | INFIDOT     { Id "`<?`" }
  | SUPIDOT     { Id "`>?`" }

branch:
    p=located(pattern) RARROW e=located(expression_binop)
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
