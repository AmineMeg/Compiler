
(* The type of tokens. *)

type token = 
  | WILDCARD
  | WHILE
  | TYPE
  | TVAR of (string)
  | TO
  | THEN
  | SWITCH
  | SUPIDOT
  | SUPEQIDOT
  | SUP
  | STRING of (string)
  | SEMICOLON
  | RSQR
  | RPAR
  | REF
  | RBRACK
  | RARROW
  | POR
  | PLUS
  | PIPE
  | PAND
  | OPOR
  | OPAND
  | MULT
  | MINUS
  | LSQR
  | LPAR
  | LET
  | LBRACK
  | INT of (Mint.t)
  | INFIDOT
  | INFEQIDOT
  | INF
  | IN
  | IF
  | IDOT
  | ID of (string)
  | FUN
  | FROM
  | FOR
  | EXTERN
  | EQUALS
  | EQIDOT
  | EOF
  | ELSE
  | EDOT
  | DOUBLEDOTEQ
  | DOT
  | DIV
  | COMMA
  | COLONLINE
  | CID of (string)
  | CHAR of (char)
  | ANSLASH
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
