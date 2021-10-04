
(* The type of tokens. *)

type token = 
  | WITH
  | WHILE
  | VAL
  | UPPERSAND
  | THEN
  | SWITCH
  | STAR
  | SLASH
  | SEMICOLON
  | RPAREN
  | RBRACKET
  | PLUS
  | PIPE
  | ORELSE
  | MINUS
  | LTE
  | LT
  | LPAREN
  | LOR
  | LBRACKET
  | LAND
  | INT of (Mint.t)
  | IN
  | IF
  | ID of (string)
  | GTE
  | GT
  | EXTERNAL
  | EVAL
  | EQUAL
  | EQ
  | EOF
  | END
  | ELSE
  | DO
  | DEF
  | COMMA
  | COLON
  | CALL
  | BANG
  | ASSIGNS

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (FopixAST.t)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val program: Lexing.position -> (FopixAST.t) MenhirInterpreter.checkpoint
  
end
