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

%right RARROW
%left POR
%left PLUS MINUS
%left MULT DIV

%%

program: v=located(def)* EOF
{ v }

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
    p=located(pattern) EQUALS e=located(expression_assign)
    { FunctionDefinition(p, e) }

polydef_val(A):
    id=located(identifier) 
    l=option(preceded(COLONLINE,located(tscheme)))
    EQUALS a=A
    { (id, l, a) }

polydef_fun(A):
    l=option(preceded(COLONLINE,located(tscheme)))
    id=located(identifier)
    a=A
    { (id, l, a) }

(*---------------------- TYPE ------------------------------*)
  
ty:
     t1=located(ty) RARROW t2=located(ty)
    { TyArrow (t1,t2) }
  | t1=located(ty_term) MULT t2=located(ty)
    { TyTuple(t1::[t2]) }
  | LPAR t=ty RPAR
    { t }
  | t=ty_term
    { t }

ty_term:
    t=typecons 
    l=loption(delimited(INF,separated_nonempty_list(COMMA, located(ty)),
    SUP))
    { TyCon(t, l) }
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
  | LPAR e=located(expression) COLONLINE t=located(ty) RPAR
    { TypeAnnotation(e, t) }
  |  ANSLASH p=located(pattern) RARROW e=located(expression)
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
    e1=located(expression_aux) DOUBLEDOTEQ e2=located(expression_assign)
    { Assign (e1, e2) }
  | e1=located(expression_aux) b=located(bin_var) e2=located(expression_assign) 
    { let bin = Position.with_poss $startpos $endpos (Apply(b, e1))
      in Apply(bin, e2) }
  | e=expression_aux
      { e }

expression_aux:
    c=located(constructor)
    l1=option(delimited(INF,separated_list(COMMA,located(ty)),SUP))
    l2=loption(delimited(LPAR,separated_nonempty_list(COMMA,located(expression_aux)), RPAR))
    { Tagged (c, l1, l2) }
  | e1=located(expression_cc) e2=located(expression_aux)
    { Apply (e1, e2) }
  | e=located(expression_cc) DOT l=located(label)
    { Field (e, l) }
  | LPAR e=located(expression_aux) COMMA l=separated_nonempty_list(COMMA, located(expression_aux)) RPAR
    { Tuple (e::l) }
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
  | IF LPAR e1=located(expression_assign) RPAR
    THEN LBRACK e2=located(expression_assign) RBRACK
    ELSE LBRACK e3=located(expression_assign) RBRACK
    {
      IfThenElse (e1, e2, e3)
    }
  | DO LBRACK e1=located(expression_aux) RBRACK
    UNTIL LPAR e2=located(expression_aux) RPAR
    { let l = Position.with_poss $startpos $endpos (While(e2, e1))
      in
      Sequence(e1::[l]) }
  | WHILE LPAR e1=located(expression_assign) RPAR 
    LBRACK e2=located(expression_assign) RBRACK
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
  | LPAR e=expression RPAR 
    { e } 
  | e=expression_cc
    { e }

expression_cc: 
    l=located(literal) 
    { Literal l }
  | id=located(identifier) l=option(delimited(INF,separated_list(COMMA,located(ty)),SUP))
    { Variable(id, l) }
  | LBRACK l1=separated_nonempty_list(COMMA, separated_pair(located(label), EQUALS, located(expression_aux))) RBRACK
    l2=option(delimited(INF,separated_list(COMMA,located(ty)),SUP))
    { Record( l1, l2) }

  
(*---------------- DEFINITIONS AUXILIAIRES --------------*)

bin_var:
    | b=located(binop)
    { Variable(b, None) }

%inline binop:
    PLUS        { Id "`+`"   }
  | MINUS       { Id "`-`"   }
  | MULT        { Id "`*`"   }
  | DIV         { Id "`/`"   }
  | OPAND       { Id "`&&`"  }
  | OPOR        { Id "`||`"  }
  | EQIDOT      { Id "`=?`"  }
  | INFEQIDOT   { Id "`<=?`" }
  | SUPEQIDOT   { Id "`>=?`" }
  | INFIDOT     { Id "`<?`"  }
  | SUPIDOT     { Id "`>?`"  }

branch:
    p=located(pattern) RARROW e=located(expression_assign)
    { Branch (p, e) }
      
(*--------------------- PATTERN -------------------------*)

pattern:
     LPAR p=located(pattern) COLONLINE t=located(ty) RPAR
    { PTypeAnnotation(p,t) }
  | p1=located(pattern) POR p2=located(pattern)
    { POr(p1::[p2]) }
  | LPAR p1=located(pattern) PAND p2=located(pattern) RPAR
    { PAnd(p1::[p2]) }
  | p=pattern_term
    { p }

pattern_term:
    id=located(identifier)    { PVariable(id) }
  | WILDCARD                  { PWildcard }
  | l=located(literal)
    { PLiteral (l) }
  | c=located(constructor)
    l1=option(delimited(INF,separated_nonempty_list(COMMA, located(ty)),SUP))
    l2=loption(delimited(LPAR,separated_nonempty_list(COMMA, located(pattern)),RPAR))
    { PTaggedValue (c, l1, l2) }
  | LBRACK 
    l1=separated_nonempty_list(COMMA, separated_pair(located(label), EQUALS, 
    located(pattern))) 
    RBRACK
    l2=option(delimited(INF,separated_nonempty_list(COMMA, located(ty)),SUP))
    { PRecord (l1, l2) }
  | LPAR l=separated_nonempty_list(COMMA, located(pattern)) RPAR
    { PTuple (l) }

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
