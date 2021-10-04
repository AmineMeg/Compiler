{ (* -*- tuareg -*- *)
  open Lexing
  open Error
  open Position
  open HopixParser

  let next_line_and f lexbuf  =
    Lexing.new_line lexbuf;
    f lexbuf

  let error lexbuf =
    error "during lexing" (lex_join lexbuf.lex_start_p lexbuf.lex_curr_p)


}

let newline = ('\010' | '\013' | "\013\010")

let blank   = [' ' '\009' '\012']

let digit = ['0'-'9']

let min_name = ['a'-'z']['A'-'Z''a'-'z''0'-'9''_']*

let maj_name = ['A'-'Z']['A'-'Z''a'-'z''0'-'9''_']*

let atome = ['\000'-'\255''\\''\'''\n''\t''\b''\r'] \*Miss printable*\


rule token = parse
  (** Layout *)
  | newline   { next_line_and token lexbuf }
  | blank+    { token lexbuf               }
  | "#*"      { BEGIN_COM }
  | "*#"      { END_COM }
  | "##"      { LINE_COM }
  | min_name as s      { VAR_ID s }
  | maj_name as s      { CONSTR_ID s }
  | min_name as s      { LABEL_ID s }
  | min_name as s      { TYPE_CON s }
  | '\''min_name as s  { TYPE_VAR s }
  | '-'?['0'-'9']+ 
    | '0''x'['0'-'9''a'-'f''A'-'F']+
    | '0''b'['0'-'1']+
    | '0''o'['0'-'7']+ as n   { NUM (int_of_string n) }
  | '\''atom'\'' as c         { CHARAC c }
  | atom as a                 { ATOM a }
  | '\" \"' { STRING }
  | eof             { EOF       }

  (** Lexing error. *)
  | _               { error lexbuf "unexpected character." }

