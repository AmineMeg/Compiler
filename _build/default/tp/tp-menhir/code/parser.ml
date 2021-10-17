
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20210419

module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | PLUS
    | INT of (
# 5 "tp/tp-menhir/code/parser.mly"
      (int)
# 17 "tp/tp-menhir/code/parser.ml"
  )
    | ID of (
# 6 "tp/tp-menhir/code/parser.mly"
      (string)
# 22 "tp/tp-menhir/code/parser.ml"
  )
    | EOF
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

# 1 "tp/tp-menhir/code/parser.mly"
   (* Emacs, open this with -*- tuareg -*- *)
open AST

# 37 "tp/tp-menhir/code/parser.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | EOF ->
          4
      | ID _ ->
          3
      | INT _ ->
          2
      | PLUS ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | EOF ->
          Obj.repr ()
      | ID _v ->
          Obj.repr _v
      | INT _v ->
          Obj.repr _v
      | PLUS ->
          Obj.repr ()
  
  and default_reduction =
    (4, "\0021\000E")
  
  and error =
    (5, "0\000\004\152\000")
  
  and start =
    1
  
  and action =
    ((4, "P\000%\000"), (8, "\006\n\022\000\000\031"))
  
  and lhs =
    (2, "*@")
  
  and goto =
    ((2, "\192\000"), (4, "Ep"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (
# 5 "tp/tp-menhir/code/parser.mly"
      (int)
# 102 "tp/tp-menhir/code/parser.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (AST.exp) = 
# 21 "tp/tp-menhir/code/parser.mly"
(
  LInt x
)
# 112 "tp/tp-menhir/code/parser.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = x;
          MenhirLib.EngineTypes.startp = _startpos_x_;
          MenhirLib.EngineTypes.endp = _endpos_x_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let x : (
# 6 "tp/tp-menhir/code/parser.mly"
      (string)
# 133 "tp/tp-menhir/code/parser.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (AST.exp) = 
# 25 "tp/tp-menhir/code/parser.mly"
(
  Id x
)
# 143 "tp/tp-menhir/code/parser.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = e2;
          MenhirLib.EngineTypes.startp = _startpos_e2_;
          MenhirLib.EngineTypes.endp = _endpos_e2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = e1;
              MenhirLib.EngineTypes.startp = _startpos_e1_;
              MenhirLib.EngineTypes.endp = _endpos_e1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let e2 : (AST.exp) = Obj.magic e2 in
        let _2 : unit = Obj.magic _2 in
        let e1 : (AST.exp) = Obj.magic e1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e1_ in
        let _endpos = _endpos_e2_ in
        let _v : (AST.exp) = 
# 29 "tp/tp-menhir/code/parser.mly"
(
  Add (e1, e2)
)
# 184 "tp/tp-menhir/code/parser.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _;
          MenhirLib.EngineTypes.semv = _2;
          MenhirLib.EngineTypes.startp = _startpos__2_;
          MenhirLib.EngineTypes.endp = _endpos__2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : unit = Obj.magic _2 in
        let e : (AST.exp) = Obj.magic e in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e_ in
        let _endpos = _endpos__2_ in
        let _v : (AST.exp) = 
# 16 "tp/tp-menhir/code/parser.mly"
(
  e
)
# 218 "tp/tp-menhir/code/parser.ml"
         in
        {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = Obj.repr _v;
          MenhirLib.EngineTypes.startp = _startpos;
          MenhirLib.EngineTypes.endp = _endpos;
          MenhirLib.EngineTypes.next = _menhir_stack;
        });
    |]
  
  and trace =
    None
  
end

module MenhirInterpreter = struct
  
  module ET = MenhirLib.TableInterpreter.MakeEngineTable (Tables)
  
  module TI = MenhirLib.Engine.Make (ET)
  
  include TI
  
  module Symbols = struct
    
    type _ terminal = 
      | T_error : unit terminal
      | T_PLUS : unit terminal
      | T_INT : (
# 5 "tp/tp-menhir/code/parser.mly"
      (int)
# 250 "tp/tp-menhir/code/parser.ml"
    ) terminal
      | T_ID : (
# 6 "tp/tp-menhir/code/parser.mly"
      (string)
# 255 "tp/tp-menhir/code/parser.ml"
    ) terminal
      | T_EOF : unit terminal
    
    type _ nonterminal = 
      | N_phrase : (AST.exp) nonterminal
      | N_exp : (AST.exp) nonterminal
    
  end
  
  include Symbols
  
  include MenhirLib.InspectionTableInterpreter.Make (Tables) (struct
    
    include TI
    
    include Symbols
    
    include MenhirLib.InspectionTableInterpreter.Symbols (Symbols)
    
    let terminal =
      fun t ->
        match t with
        | 0 ->
            X (T T_error)
        | 1 ->
            X (T T_PLUS)
        | 2 ->
            X (T T_INT)
        | 3 ->
            X (T T_ID)
        | 4 ->
            X (T T_EOF)
        | _ ->
            assert false
    
    and nonterminal =
      fun nt ->
        match nt with
        | 2 ->
            X (N N_exp)
        | 1 ->
            X (N N_phrase)
        | _ ->
            assert false
    
    and lr0_incoming =
      (4, "\006\131TZ")
    
    and rhs =
      ((4, "6\133EZ"), (4, "\001#h"))
    
    and lr0_core =
      (4, "\001#Eg")
    
    and lr0_items =
      ((16, "\000\000\004\001\b\001\000\001\016\001\012\001\012\002\012\003\012\001\016\002"), (4, "\001#Fy\160"))
    
    and nullable =
      "\000"
    
    and first =
      (5, "1\140")
    
  end) (ET) (TI)
  
end

let phrase =
  fun lexer lexbuf ->
    (Obj.magic (MenhirInterpreter.entry `Legacy 0 lexer lexbuf) : (AST.exp))

module Incremental = struct
  
  let phrase =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (AST.exp) MenhirInterpreter.checkpoint)
  
end

# 269 "<standard.mly>"
  

# 338 "tp/tp-menhir/code/parser.ml"
