
(* The type of tokens. *)

type token = 
  | WILDCARD
  | TVAR of (string)
  | TRUE
  | STRING of (string)
  | RPAR
  | LPAR
  | LET
  | INT of (Mint.t)
  | ID of (string)
  | FUN
  | FALSE
  | EQUALS
  | EOF
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
