
(* The type of tokens. *)

type token = 
  | WILDCARD
  | TYPE
  | TVAR of (string)
  | TRUE
  | THEN
  | SUP
  | STRING of (string)
  | RSQR
  | RPAR
  | RBRACK
  | RARROW
  | PLUS
  | PIPE
  | MULT
  | MINUS
  | LSQR
  | LPAR
  | LET
  | LBRACK
  | INT of (Mint.t)
  | INF
  | IF
  | ID of (string)
  | FUN
  | FALSE
  | EXTERN
  | EQUALS
  | EOF
  | ELSE
  | DOT
  | DIV
  | COMMA
  | COLONLINE
  | CID of (string)
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (HopixAST.t)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val program: Lexing.position -> (HopixAST.t) MenhirInterpreter.checkpoint
  
end
