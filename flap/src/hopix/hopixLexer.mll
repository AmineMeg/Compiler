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

(*C'est con mais faut un lexer ici mdr*)
let layout = ' ' | '\t' | '\n'

let newline = ('\010' | '\013' | "\013\010")

let blank   = [' ' '\009' '\012']

let digit = ['0'-'9']

let ascii = '0''x'['0'-'9' 'a'-'f' 'A'-'F']['0'-'9' 'a'-'f' 'A'-'F']

let integer = ['-']?['0'-'9']+ | '0''x'['0'-'9' 'a'-'f' 'A'-'F']+ | '0''b'['0'-'1']+ | '0''o'['0'-'7']+

let var_id = ['a'-'z'][ 'A'-'Z' 'a'-'z' '0'-'9' '_' ]*

let type_var = '\''var_id

let constr_id = ['A'-'Z']['A'-'Z' 'a'-'z' '0'-'9' '_']*


rule token = parse
  | "="               { EQUALS                      }
  | "let"             { LET                         }
  | "fun"             { FUN                         }
  | "True"            { TRUE    }
  | "False"           { FALSE   }
  | "("               { LPAR                        }
  | ")"               { RPAR                        }
  | "<"               { INF }
  | ">"               { SUP }
  | ","               { COMMA                       }
  | ":"               { COLONLINE                   }
  | "_"               { WILDCARD                    }
  | "and"             { AND                         }
  | "+"               { PLUS }
  | "-"               { MINUS }
  | "/"               { DIV }
  | "*"               { MULT }
  | "|"               { PIPE }
  | "if"              { IF }
  | "then"            { THEN }
  | "else"            { ELSE }
  | "type"            { TYPE }
  | integer as i      { INT (Mint.of_string i)      }
  | var_id as s       { ID s                        }
  | constr_id as cid  { CID cid                     }
  | type_var as tvar  { TVAR tvar                   }
  (** Layout *)
  | newline           { next_line_and token lexbuf  }
  | blank+            { token lexbuf                }
  | eof               { EOF                         }

  (** Lexing error. *)
  | _                 { error lexbuf "unexpected character." }


