%{ (* -*- tuareg -*- *)

  open HopixAST
  open Position


%}

%token EOF
%token <Mint.t> INT
%token <string> ID STRING CID TVAR
%token LPAR RPAR LBRACK RBRACK LSQR RSQR COMMA COLONLINE AND
%token LET FUN EXTERN WILDCARD TYPE
%token PLUS MINUS DIV MULT EQUALS INF SUP PIPE
%token IF THEN ELSE TRUE FALSE
%token RARROW

%start<HopixAST.t> program

%%

program: v=located(definition)* EOF
{
  v
}

definition: 
    TYPE t=located(typecons) 
    l=loption(terminated(preceded(INF,separated_nonempty_list(COMMA, located(typevar))
    ),SUP))
    EQUALS s=tdef
    {
      DefineType (t, l, s)
    }
  | EXTERN id=located(identifier) COLONLINE ts=located(tscheme)
    { DeclareExtern (id,ts) }
  | v = vdefinition { DefineValue v }

(*--------------------VDEFINITION----------------------------*)
vdefinition:
    LET x=located(identifier)  EQUALS y=located(expression)
    {
      SimpleValue (x ,None, y)  (*UTILISER X? OU OPTION(X)  pour option*) 
    }
  | FUN l=separated_nonempty_list(AND, fundef)
    {
      RecFunctions(l)
    }

(*---------------------FUNDEF---------------------------*)
fundef: 
    id=located(identifier) LPAR p=located(patternList) RPAR EQUALS e=located(expression)
      {
        (id, None, FunctionDefinition(p, e))
      }

(*---------------------- TYPE ------------------------------*)
tdef:
    PIPE? l=separated_list(PIPE, 
    pair(located(constructor) ,
    loption(terminated(preceded(LPAR, separated_nonempty_list(COMMA, located(ty))), RPAR))
    ))
    { 
      DefineSumType (l) 
    }
  | l=loption(terminated(preceded(
    LBRACK, 
    separated_nonempty_list(COMMA, separated_pair(located(label), COLONLINE, located(ty)))), 
    RBRACK))
    { DefineRecordType (l) }
  
ty:
    t=typecons 
    l=loption(terminated(preceded(INF,separated_nonempty_list(COMMA, located(ty))
    ),SUP))
    { TyCon(t, l) }
  | t1=located(ty) RARROW t2=located(ty)
    { TyArrow (t1,t2) }
  (*| l=separated_nonempty_list(MULT, located(ty))
    { TyTuple(l) }*)
  | t=typevar 
    { TyVar t }

tscheme:
    l=loption(terminated(preceded(LSQR,nonempty_list(located(typevar))
    ),RSQR)) t=located(ty)
    {  ForallTy (l,t) }

(*----------------------PATTERN--------------------------*)
patternList:
    l=separated_list(COMMA, located(pattern))
    {
      PTuple(l)
    }

pattern:
    id=located(identifier)    { PVariable(id) }
  | WILDCARD                  { PWildcard }

(*----------------------EXPRESSION--------------------------*)
expression:
      l=located(literal) { Literal l }
    | c=located(constructor)
      LPAR l=separated_list(COMMA,located(expression)) RPAR
      {
        Tagged (c, None, l)
      }
    | e1=located(expression) PLUS e2=located(expression)
      {
        Apply(e1, e2)
      }
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
  
(*----------------------LITTERAL--------------------------*)
literal:
    i=INT     { LInt i }
  | TRUE  { LBool true }

(*--------------------IDENTIFIER----------------------------*)
identifier:
    id=ID { Id id }
  
(*------------------ CONSTRUCTOR --------------------------*)
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