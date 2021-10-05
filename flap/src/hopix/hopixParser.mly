%{ (* -*- tuareg -*- *)

  open HopixAST
  open Position


%}

%token EOF
%token <Mint.t> INT
%token <string> ID STRING CID TVAR
%token LET EQUALS FUN LPAR RPAR COMMA COLONLINE AND WILDCARD TRUE FALSE
%token PLUS MINUS DIV MULT
%token IF THEN ELSE

%start<HopixAST.t> program

%%

program: v=located(definition)* EOF
{
  v
}

definition: 
(*FAIRE LES AUTRES DEFINITIONS PLUS TARD*)
v = vdefinition 
{
  DefineValue v
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
fundef: id=located(identifier) LPAR p=located(patternList) RPAR EQUALS e=located(expression)
{
  (id, None, FunctionDefinition(p, e))
}
(*----------------------PATTERN--------------------------*)
patternList:
    l=separated_nonempty_list(COMMA, located(pattern))
    {
      PTuple(l)
    }

pattern:
    id=located(identifier) { PVariable(id) }
  | WILDCARD                 { PWildcard }
(*--------------------IDENTIFIER----------------------------*)
identifier:x= ID
{
  Id x
}
(*----------------------EXPRESSION--------------------------*)
expression:
    l=located(literal)  
      { Literal l }
    | IF e1=located(expression) 
      THEN e2=located(expression) 
      ELSE e3=located(expression)
      {
        IfThenElse (e1, e2, e3)
      }
  
(*----------------------LITTERAL--------------------------*)
literal:
      TRUE { LBool true }
    | FALSE { LBool false }
    | i = INT   { LInt i }


%inline located(X): x=X {
  Position.with_poss $startpos $endpos x
}


(* pour faire tourner les tests : dans tests : make "nom du test"*)
(* dans l'enoncé : dune exec ./src/flap.exe *)