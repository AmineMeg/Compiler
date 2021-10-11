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

  let profondeur = ref 0

  let longueur = ref 0

  let longueur_ref = ref 0

  let special_char = function
    | 'n' -> '\n'
    | 't' -> '\t'
    | 'b' -> '\b'
    | 'r' -> '\r' 
    | '\\'-> '\\'
    | '"' -> '"'
    | '\'' -> '\''
    | _ -> failwith "Lexer.special_char"

  let valide_code_ascii code = if code < 256 then Char.chr(code) else failwith "Lexer.special_char"

}

let newline = ('\010' | '\013' | '\010')

let blank   = [' ' '\009' '\012']

let digit = ['0'-'9']

let integer = ['-']?['0'-'9']+ | '0''x'['0'-'9' 'a'-'f' 'A'-'F']+ | '0''b'['0'-'1']+ | '0''o'['0'-'7']+

let ascii_hexa = '0''x'['0'-'9' 'a'-'f' 'A'-'F']['0'-'9' 'a'-'f' 'A'-'F']

let layout = ' ' | '\t' | '\n'

let id = ['a'-'z']['A'-'Z' 'a'-'z' '0'-'9' '_']*

let type_variable = '`'id

let constr_id = ['A'-'Z']['A'-'Z' 'a'-'z' '0'-'9' '_']*

let special_char = ['n' 't' 'b' 'r' '\\' ''' '"']


rule token = parse
  (** Layout *)
  | ' '                           { token lexbuf               }
  | newline | "//"                { next_line_and token lexbuf }
  | layout  | blank+              { token lexbuf               }
  | "/*"                          { comment lexbuf             }
  | '"'                           { string (Buffer.create 32) lexbuf }
  | '\''                          { char (Buffer.create 2) lexbuf    }
  | "_"                           { UNDERSCORE                 }
  | "+"                           { PLUS                       }
  | "-"                           { MIN                        }
  | "*"                           { STAR                       }
  | "/"                           { DIV                        }
  | ":="                          { DOUBLEPOINTEGALE           }
  | "\\"                          { BACKSLASH                  }
  | "="                           { EQUAL                      }
  | "=?"                          { EQUALTERN                  }
  | "<?"                          { SUPTERN                    }
  | ">?"                          { MINTERN                    }
  | "("                           { LPAREN                     }
  | ")"                           { RPAREN                     }
  | "["                           { LCROCH                     }
  | "]"                           { RCROCH                     }
  | "{"                           { LACOL                      }
  | "}"                           { RACOL                      }
  | ":"                           { DOUBLEPOINT                }
  | ";"                           { POINTVIR                   }
  | "."                           { POINT                      }
  | ","                           { COMMA                      }
  | "->"                          { ARROW                      }
  | "|"                           { PIPE                       }
  | "&"                           { ESPER                      }
  | "!"                           { EXCLA                      }
  | "<"                           { MINUS                      }
  | ">"                           { SUP                        }
  | "&&"                          { OPAND                      }
  | "||"                          { OPOR                       }
  | "let"                         { LET                        }
  | "fun"                         { FUN                        }
  | "ref"                         { REF                        }
  | "type"                        { TYPE                       }
  | "and"                         { AND                        }
  | "switch"                      { SWITCH                     }
  | "if"                          { IF                         }
  | "else"                        { ELSE                       }
  | "do"                          { DO                         }
  | "while"                       { WHILE                      }
  | "for"                         { FOR                        }
  | "in"                          { IN                         }
  | "to"                          { TO                         }
  | "externe"                     { EXTERNE                    }
  | integer as i                  { INT (Mint.of_string i)     }
  | id as s                       { ID s                       }
  | constr_id as cid              { CID cid                    }
  | type_variable as t            { TYVARID t                  }
  | eof                           { EOF                        }

  (** Lexing error. *)
  | _                             { error lexbuf "unexpected character." }

  and comment = parse
  | "/*"                          { incr profondeur ; comment lexbuf     }
  | "*/"                          { decr profondeur ; if !profondeur = 0 then token lexbuf else comment lexbuf }
  | eof                           { error lexbuf "commentaire non fini" }
  | _                             { comment lexbuf           }


  and string buffer = parse
  | '"'                                 { STRING (Buffer.contents buffer)}
  | '\n'                                { new_line lexbuf; Buffer.add_char buffer '\n'; string buffer lexbuf}
  | '\\' (special_char as char)         { Buffer.add_char buffer (special_char char); string buffer lexbuf}
  | '\\' (ascii_hexa as code)           { Buffer.add_char buffer (Char.chr(int_of_string(code))); string buffer lexbuf}
  | '\\' (digit digit digit as code)    { Buffer.add_char buffer (valide_code_ascii(int_of_string(code))); string buffer lexbuf}
  | '\\' (layout)                       { string buffer lexbuf }
  | _ as char                           { Buffer.add_char buffer char; string buffer lexbuf}
  | eof                                 { error lexbuf "Unterminated string."}

  and char buffer = parse
  | '\''                                  { incr longueur_ref; if !longueur = !longueur_ref then CHAR (Buffer.nth buffer 0) else error lexbuf "unexpected charactere."}
  | '\n'                                  { incr longueur; new_line lexbuf; Buffer.add_char buffer '\n'; char buffer lexbuf}
  | '\\' (ascii_hexa as code)             { incr longueur; Buffer.add_char buffer (Char.chr(int_of_string(code))); char buffer lexbuf}
  | '\\' (special_char as car)            { incr longueur; Buffer.add_char buffer (special_char car); char buffer lexbuf}
  | '\\' (digit digit digit as code)      { incr longueur; Buffer.add_char buffer (valide_code_ascii(int_of_string(code))); char buffer lexbuf }
  | '\\' (layout)                         { char buffer lexbuf }
  | _ as  car                             { incr longueur; Buffer.add_char buffer car; char buffer lexbuf}
  | eof                                   { error lexbuf "caractère non fini"}

