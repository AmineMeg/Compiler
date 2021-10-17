
(* The type of tokens. *)

type token = 
  | PLUS
  | INT of (int)
  | ID of (string)
  | EOF

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val phrase: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (AST.exp)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
  (* The indexed type of terminal symbols. *)
  
  type _ terminal = 
    | T_error : unit terminal
    | T_PLUS : unit terminal
    | T_INT : (int) terminal
    | T_ID : (string) terminal
    | T_EOF : unit terminal
  
  (* The indexed type of nonterminal symbols. *)
  
  type _ nonterminal = 
    | N_phrase : (AST.exp) nonterminal
    | N_exp : (AST.exp) nonterminal
  
  (* The inspection API. *)
  
  include MenhirLib.IncrementalEngine.INSPECTION
    with type 'a lr1state := 'a lr1state
    with type production := production
    with type 'a terminal := 'a terminal
    with type 'a nonterminal := 'a nonterminal
    with type 'a env := 'a env
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val phrase: Lexing.position -> (AST.exp) MenhirInterpreter.checkpoint
  
end
