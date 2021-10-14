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

  let is_a_valid_ascii code = if code < 256 then Char.chr(code) else failwith "Lexer.special_char" 

  let spe_char_switch = function
  | 'r'  -> '\r'
  | 'b'  -> '\b'
  | 't'  -> '\t'
  | 'n'  -> '\n'
  | '"'  -> '"'
  | '\''  -> '\''
  | '\\' -> '\\'
  | _  -> failwith "Lexer.special_char"


  let longueur = ref 0
  let taille_char = ref 0


}


let layout = ' ' | '\t' | '\n'

let newline = ('\010' | '\013' | "\013\010")

let blank   = [' ' '\009' '\012']

let digit = ['0'-'9']

let ascii = '0''x'['0'-'9' 'a'-'f' 'A'-'F']['0'-'9' 'a'-'f' 'A'-'F']

let integer = ['-']?['0'-'9']+ | '0''x'['0'-'9' 'a'-'f' 'A'-'F']+ | '0''b'['0'-'1']+ | '0''o'['0'-'7']+

let var_id = ['a'-'z'][ 'A'-'Z' 'a'-'z' '0'-'9' '_' ]*

let type_var = '`'var_id

let constr_id = ['A'-'Z']['A'-'Z' 'a'-'z' '0'-'9' '_']*

let atom = ['\000' - '\127'] 

let character_speciaux = ['\\' ''' '"' 'n' 't' 'b' 'r']


rule token = parse
  | "="               { EQUALS                      }
  | "\'"              { char(Buffer.create 2) lexbuf   }
  | "\""              { string(Buffer.create 32) lexbuf}
  | "let"             { LET                         }
  | "fun"             { FUN  }
  | "extern"          { EXTERN }
  | "ref"             { REF }
  | "("               { LPAR                        }
  | ")"               { RPAR                        }
  | "{"               { LBRACK }
  | "}"               { RBRACK }
  | "["               { LSQR }
  | "]"               { RSQR }
  | "<"               { INF }
  | ">"               { SUP }
  | "<?"              { SUPIDOT                     }
  | ":="              { DOUBLEDOTEQ }
  | ">?"              { INFIDOT                     }
  | ","               { COMMA                       }
  | ":"               { COLONLINE                   }
  | ";"               { SEMICOLON }
  | "."               { DOT }
  | "!"               { EDOT  }
  | "_"               { WILDCARD                    }
  | "and"             { AND                         }
  | "+"               { PLUS }
  | "-"               { MINUS }
  | "/"               { DIV }
  | "\\"              { ANSLASH }
  | "*"               { MULT }
  | "||"              { OPOR }
  | "&&"              { OPAND }
  | "|"               { POR }
  | "&"               { PAND }
  | "=?"              { EQIDOT }
  | "<=?"             { INFEQIDOT }  
  | ">=?"             { SUPEQIDOT }
  | "do"              { DO }
  | "until"           { UNTIL }
  | "for"             { FOR }
  | "from"            { FROM }
  | "to"              { TO }
  | "if"              { IF }
  | "then"            { THEN }
  | "else"            { ELSE }
  | "type"            { TYPE }
  | "while"           { WHILE }
  | "switch"          { SWITCH }
  | "->"              { RARROW }
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


and string buffer = parse
|'"'                                { STRING (Buffer.contents buffer) }
|'\n'                               { new_line lexbuf; Buffer.add_char buffer '\n'; string buffer lexbuf}
|'\\' (ascii as ch)                 { Buffer.add_char buffer (Char.chr(int_of_string(ch))); string buffer lexbuf}
|'\\' (character_speciaux as ch)    { Buffer.add_char buffer (spe_char_switch ch); string buffer lexbuf}
|'\\' (digit digit digit as asc)    { Buffer.add_char buffer (is_a_valid_ascii(int_of_string(asc))); string buffer lexbuf}
|'\\' (layout)                      { string buffer lexbuf }
| _ as ch                           { Buffer.add_char buffer ch; string buffer lexbuf}
| eof                               { error lexbuf "Unterminated string."}


and char buffer = parse 
|'\''                               
  { incr taille_char; 
    if !taille_char = !longueur 
    then CHAR (Buffer.nth buffer 0) 
    else error lexbuf "unexpected character."
  }   
|'\n'                               { new_line lexbuf; Buffer.add_char buffer '\n'; incr longueur; char buffer lexbuf}                                                   
| '\\' (ascii as ch)                { Buffer.add_char buffer (Char.chr(int_of_string(ch))); incr longueur; char buffer lexbuf}
| '\\' (character_speciaux as ch)   { Buffer.add_char buffer (spe_char_switch ch); incr longueur; char buffer lexbuf}
| '\\' (digit digit digit as asc)   { Buffer.add_char buffer (is_a_valid_ascii(int_of_string(asc))); incr longueur; char buffer lexbuf }
| '\\' (layout)                     { char buffer lexbuf }
| _ as ch                           { Buffer.add_char buffer ch; incr longueur; char buffer lexbuf }
| eof                               { error lexbuf "caractère non fini" }                           