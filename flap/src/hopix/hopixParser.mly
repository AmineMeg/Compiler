%{ (* -*- tuareg -*- *)

  open HopixAST
  open Position


%}

%token EOF
%token <Mint.t> INT
%token <string> ID STRING CID TVAR
%token LET EQUALS

%start<HopixAST.t> program

%%

program: e=exp EOF
{
  e  (*creer un analyser syntacique ici*)
}

exp 
x = INT
{
  | Lint x
}
| x = ID
{
  | ID s
}
| LET x=ID EQUALS y=exp
{
  Define (x, y)
}

%inline located(X): x=X {
  Position.with_poss $startpos $endpos x
}


(* pour faire tourner les tests : dans tests : make "nom du test"*)