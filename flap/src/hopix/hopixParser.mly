%{ (* -*- tuareg -*- *)

  open HopixAST
  open Position


%}

%token EOF
%token <Mint.t> INT
%token <string> ID STRING CID TVAR
%token LET EQUALS FUN LPAR RPAR COMMA COLONLINE AND

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
fundef: id=located(identifier) p=located(pattern) EQUALS e=located(expression)
{
  (id, None, FunctionDefinition(p, e))
  
}
(*----------------------PATTERN--------------------------*)
pattern:x=located(identifier)
{
  PVariable(x)
}
(*--------------------IDENTIFIER----------------------------*)
identifier:x= ID
{
  Id x
}
(*----------------------EXPRESSION--------------------------*)
expression: l=located(literal)
{
  Literal l
}
(*----------------------LITTERAL--------------------------*)
literal: x = INT
{
  LInt x
}



%inline located(X): x=X {
  Position.with_poss $startpos $endpos x
}


(* pour faire tourner les tests : dans tests : make "nom du test"*)