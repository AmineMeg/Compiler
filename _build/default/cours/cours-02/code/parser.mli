
(* The type of tokens. *)

type token = 
  | STAR
  | PLUS
  | INT of (int)
  | EOF

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val phrase: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.e)
