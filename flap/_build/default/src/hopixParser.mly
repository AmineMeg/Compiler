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
%token LET FUN EXTERN WILDCARD TYPE
%token PLUS MINUS DIV MULT EQUALS INF SUP PIPE
%token IF THEN ELSE TRUE FALSE
%token RARROW

%start<HopixAST.t> program


%%

program: v=located(def)* EOF
{
  v
}

(*--------------------PROGRAMME----------------------------*)

def: 
    TYPE t=located(typecons) 
    l=loption(delimited(INF,separated_nonempty_list(COMMA, located(typevar)),
    SUP))
    EQUALS s=tdef
    {
      DefineType (t, l, s)
    }
  | EXTERN id=located(identifier) COLONLINE ts=located(tscheme)
    { DeclareExtern (id,ts) }
  | v = vdef { DefineValue v }
  | error 
    { let pos=Position.lex_join $startpos $endpos in Error.error "parsing" pos "Syntax error."}

tdef:
    PIPE? l=separated_list(PIPE, 
    pair(located(constructor) ,
    loption(delimited(LPAR, separated_nonempty_list(COMMA, located(ty)), RPAR))
    ))
    { 
      DefineSumType (l) 
    }
  | l=loption(delimited(
    LBRACK, 
    separated_nonempty_list(COMMA, separated_pair(located(label), COLONLINE, located(ty))), 
    RBRACK))
    { DefineRecordType (l) }

vdef:
    LET x=located(identifier) 
    t=option(preceded(COLONLINE,located(tscheme))) 
    EQUALS y=located(expression)
    {
      SimpleValue (x, t, y)  (*UTILISER X? OU OPTION(X)  pour option*) 
    }
  | FUN l=separated_nonempty_list(AND, fundef)
    {
      RecFunctions(l)
    }

fundef: 
    id=located(identifier) p=located(pattern) EQUALS e=located(expression)
      {
        (id, None, FunctionDefinition(p, e))
      }

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
      l=located(literal) { Literal l }
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
    | e1=located(expression) PLUS e2=located(expression)
      { Apply (e1, e2) }
    | LPAR l=separated_list(COMMA,located(expression)) RPAR
      {
        Tuple (l)
      }
    | IF e1=located(expression) 
      THEN e2=located(expression) 
      ELSE e3=located(expression)
      {
        IfThenElse (e1, e2, e3)
      }
    | FOR vID=located(identifier)
      FROM 
      LPAR e1=located(expression) RPAR
      TO 
      LPAR e2=located(expression) RPAR 
      LBRACK e3=located(expression) RBRACK
      {
        For(vID, e1, e2, e3)
      }


(*----------------------PATTERN--------------------------*)

pattern:
    id=located(identifier)    { PVariable(id) }
  | WILDCARD                  { PWildcard }
  | LPAR l=separated_nonempty_list(COMMA, located(pattern)) RPAR
    { PTuple (l) }

(*---------------------- FINAL --------------------------*)
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