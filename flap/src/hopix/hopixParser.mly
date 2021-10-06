%{ (* -*- tuareg -*- *)

  open HopixAST
  open Position


%}

%token EOF
%token <Mint.t> INT
%token <string> ID STRING CID TVAR
%token LET FUN LPAR RPAR COMMA COLONLINE AND WILDCARD TYPE
%token PLUS MINUS DIV MULT EQUALS INF SUP PIPE
%token IF THEN ELSE 

%start<HopixAST.t> program

%%

program: v=located(definition)* EOF
{
  v
}

definition: 
(*FAIRE LES AUTRES DEFINITIONS PLUS TARD*)
    v = vdefinition { DefineValue v }
  | TYPE t=located(typecons) EQUALS s=tdef
    {
      DefineType (t, [], s)
    }

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
  | s=STRING  { LString s }

(*--------------------IDENTIFIER----------------------------*)
identifier:
    id=ID { Id id }
  
(*------------------ CONSTRUCTOR --------------------------*)
constructor:
    c=CID { KId c }

(*---------------------- TYPE ------------------------------*)
tdef:
    l=separated_list(COMMA, tlist)
    { 
      DefineSumType (l) 
    }

tlist:
    c=located(constructor) t=separated_list(COMMA, located(ty))
    {
      (c, t)
    }

ty:
    t=typevar { TyVar t }

typecons:
    t=ID { TCon t }

typevar:
    v=TVAR { TId v }

%inline located(X): x=X {
  Position.with_poss $startpos $endpos x
}


(* pour faire tourner les tests : dans tests : make "nom du test"*)
(* dans l'enoncé : dune exec ./src/flap.exe *)