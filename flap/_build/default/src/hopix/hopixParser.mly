%{ (* -*- tuareg -*- *)

  open HopixAST
  open Position


%}

%token EOF
%token <Mint.t> INT
%token <string> ID STRING CID TVAR
%token COMMA COLONLINE AND DOT
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
    id=located(identifier) LPAR p=located(patternList) RPAR EQUALS e=located(expression)
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
  (*| l=[located(ty),separated_nonempty_list(MULT, located(ty))]
    { TyTuple([t|l]) }*)
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


(*----------------------PATTERN--------------------------*)
patternList:
    l=separated_list(COMMA, located(pattern))
    {
      PTuple(l)
    }

pattern:
    id=located(identifier)    { PVariable(id) }
  | WILDCARD                  { PWildcard }

(*---------------------- FINAL --------------------------*)
literal:
    i=INT     { LInt i }
  | TRUE  { LBool true }

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