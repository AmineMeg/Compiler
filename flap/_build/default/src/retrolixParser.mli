
(* The type of tokens. *)

type token = 
  | UPPERSAND
  | TAIL
  | SWITCH
  | SUB
  | SEMICOLON
  | RPAREN
  | RID of (string)
  | RET
  | RARROW
  | ORELSE
  | OR
  | MUL
  | LTE
  | LT
  | LSTRING of (string)
  | LPAREN
  | LOCAL
  | LCHAR of (char)
  | LARROW
  | JUMPIF
  | JUMP
  | INT of (Mint.t)
  | ID of (string)
  | GTE
  | GT
  | GLOBALS
  | EXTERNAL
  | EXIT
  | EQ
  | EOF
  | END
  | DIV
  | DEF
  | COPY
  | COMMENT of (string)
  | COMMA
  | COLON
  | CALL
  | AND
  | ADD

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (RetrolixAST.t)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val program: Lexing.position -> (RetrolixAST.t) MenhirInterpreter.checkpoint
  
end
