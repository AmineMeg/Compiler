
(* The type of tokens. *)

type token = 
  | WHILE
  | VAL
  | THEN
  | SWITCH
  | STAR
  | SLASH
  | SEMICOLON
  | RPAREN
  | RBRACKET
  | RBRACE
  | PLUS
  | PIPE
  | OR
  | NOTHING
  | NEWBLOCK
  | MINUS
  | LTE
  | LT
  | LSTRING of (string)
  | LPAREN
  | LOR
  | LCHAR of (char)
  | LBRACKET
  | LBRACE
  | LAND
  | INT of (Int64.t)
  | INFIXID of (string)
  | IN
  | IF
  | ID of (string)
  | GTE
  | GT
  | FUN
  | FI
  | EXTERN
  | EQUAL
  | EQ
  | EOF
  | ELSE
  | DRARROW
  | DEQUAL
  | COMMA
  | COLON
  | BACKSLASH
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (HobixAST.t)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val program: Lexing.position -> (HobixAST.t) MenhirInterpreter.checkpoint
  
end
