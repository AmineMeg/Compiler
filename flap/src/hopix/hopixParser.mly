%{ (* -*- tuareg -*- *)

  open HopixAST
  open Position


%}

%token EOF
%toket <int> INT
%token <string> ID STRING CID TVAR
%token LET

%start<HopixAST.t> program

%%

program: EOF
{
   [] (*creer un analyser syntacique ici*)
}

%inline located(X): x=X {
  Position.with_poss $startpos $endpos x
}


(* pour faire tourner les tests : dans tests : make "nom du test"* )