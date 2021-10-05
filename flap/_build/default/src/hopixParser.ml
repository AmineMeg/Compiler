
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20210419

module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WILDCARD
    | TVAR of (
# 11 "src/hopixParser.mly"
       (string)
# 17 "src/hopixParser.ml"
  )
    | TRUE
    | THEN
    | STRING of (
# 11 "src/hopixParser.mly"
       (string)
# 24 "src/hopixParser.ml"
  )
    | RPAR
    | PLUS
    | MULT
    | MINUS
    | LPAR
    | LET
    | INT of (
# 10 "src/hopixParser.mly"
       (Mint.t)
# 35 "src/hopixParser.ml"
  )
    | IF
    | ID of (
# 11 "src/hopixParser.mly"
       (string)
# 41 "src/hopixParser.ml"
  )
    | FUN
    | FALSE
    | EQUALS
    | EOF
    | ELSE
    | DIV
    | COMMA
    | COLONLINE
    | CID of (
# 11 "src/hopixParser.mly"
       (string)
# 54 "src/hopixParser.ml"
  )
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

# 1 "src/hopixParser.mly"
   (* -*- tuareg -*- *)

  open HopixAST
  open Position



# 73 "src/hopixParser.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | AND ->
          24
      | CID _ ->
          23
      | COLONLINE ->
          22
      | COMMA ->
          21
      | DIV ->
          20
      | ELSE ->
          19
      | EOF ->
          18
      | EQUALS ->
          17
      | FALSE ->
          16
      | FUN ->
          15
      | ID _ ->
          14
      | IF ->
          13
      | INT _ ->
          12
      | LET ->
          11
      | LPAR ->
          10
      | MINUS ->
          9
      | MULT ->
          8
      | PLUS ->
          7
      | RPAR ->
          6
      | STRING _ ->
          5
      | THEN ->
          4
      | TRUE ->
          3
      | TVAR _ ->
          2
      | WILDCARD ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | AND ->
          Obj.repr ()
      | CID _v ->
          Obj.repr _v
      | COLONLINE ->
          Obj.repr ()
      | COMMA ->
          Obj.repr ()
      | DIV ->
          Obj.repr ()
      | ELSE ->
          Obj.repr ()
      | EOF ->
          Obj.repr ()
      | EQUALS ->
          Obj.repr ()
      | FALSE ->
          Obj.repr ()
      | FUN ->
          Obj.repr ()
      | ID _v ->
          Obj.repr _v
      | IF ->
          Obj.repr ()
      | INT _v ->
          Obj.repr _v
      | LET ->
          Obj.repr ()
      | LPAR ->
          Obj.repr ()
      | MINUS ->
          Obj.repr ()
      | MULT ->
          Obj.repr ()
      | PLUS ->
          Obj.repr ()
      | RPAR ->
          Obj.repr ()
      | STRING _v ->
          Obj.repr _v
      | THEN ->
          Obj.repr ()
      | TRUE ->
          Obj.repr ()
      | TVAR _v ->
          Obj.repr _v
      | WILDCARD ->
          Obj.repr ()
  
  and default_reduction =
    (8, "\000\000\006\000\000\t\011\000\n\003\000\000\000\000\004\020\000\021\000\000\r\014\000\000\000\005\000\000\019\012\000\000\017\002\001\000\015\000\b")
  
  and error =
    (25, "\000\017 \000\001\000\000\000\000\000\000\b\001\000\200\000\000\000\000\000\000\000 \025\000\000\000\000\000\000\000\002\000\000\002\001\144\000\000\001\000\128d\000\000\000\000\000\000\000\000\002\000\000\000\000\000\b\000\b\000@\000\000\000\000\000\000\000\b\000\000\000\000\128\016\012\128\000\000\000\000\128\001\b\000@\000\000\000\000\000\000\000\000D\130\000\004\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\137\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((8, "\000\021\000\023\007\000\000\007\000\000\006\007\015\007\000\000\021\000\018\004\000\000\028\b\007\000\t\004\000\000\021\021\000\000\000\b\000\000\000"), (8, "\022=ER\n=\018.=\026\030\0066\"~B\nn\025N^b\147"))
  
  and lhs =
    (4, "\012\187\169\136wveC2!\016")
  
  and goto =
    ((8, "\003\015\000\000\024\000\000\026\000\000\000\030\000(\000\000\006\000\000\003\000\000\000\000*\000\000\016\000\000\000\012\000\000\000\000\000\"\000"), (8, "\"\022\004#\023\027\018$\030!\029&\019\031\027\019\031\030\"\n\n\000\n\016\011'\r\n\n&\000\015\026"))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = v;
          MenhirLib.EngineTypes.startp = _startpos_v_;
          MenhirLib.EngineTypes.endp = _endpos_v_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let v : (HopixAST.value_definition) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_v_ in
        let _v : (HopixAST.definition) = 
# 28 "src/hopixParser.mly"
(
  DefineValue v
)
# 224 "src/hopixParser.ml"
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
        let x : (HopixAST.literal) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (HopixAST.expression) = let l =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 81 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 254 "src/hopixParser.ml"
          
        in
        
# 66 "src/hopixParser.mly"
      ( Literal l )
# 260 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = x_inlined2;
          MenhirLib.EngineTypes.startp = _startpos_x_inlined2_;
          MenhirLib.EngineTypes.endp = _endpos_x_inlined2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _5;
            MenhirLib.EngineTypes.startp = _startpos__5_;
            MenhirLib.EngineTypes.endp = _endpos__5_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = x_inlined1;
              MenhirLib.EngineTypes.startp = _startpos_x_inlined1_;
              MenhirLib.EngineTypes.endp = _endpos_x_inlined1_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _3;
                MenhirLib.EngineTypes.startp = _startpos__3_;
                MenhirLib.EngineTypes.endp = _endpos__3_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _;
                  MenhirLib.EngineTypes.semv = x;
                  MenhirLib.EngineTypes.startp = _startpos_x_;
                  MenhirLib.EngineTypes.endp = _endpos_x_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _menhir_s;
                    MenhirLib.EngineTypes.semv = _1;
                    MenhirLib.EngineTypes.startp = _startpos__1_;
                    MenhirLib.EngineTypes.endp = _endpos__1_;
                    MenhirLib.EngineTypes.next = _menhir_stack;
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let x_inlined2 : (HopixAST.expression) = Obj.magic x_inlined2 in
        let _5 : unit = Obj.magic _5 in
        let x_inlined1 : (HopixAST.expression) = Obj.magic x_inlined1 in
        let _3 : unit = Obj.magic _3 in
        let x : (HopixAST.expression) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_x_inlined2_ in
        let _v : (HopixAST.expression) = let e3 =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined2_, _startpos_x_inlined2_, x_inlined2) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 81 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 326 "src/hopixParser.ml"
          
        in
        let e2 =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 81 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 338 "src/hopixParser.ml"
          
        in
        let e1 =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 81 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 349 "src/hopixParser.ml"
          
        in
        
# 70 "src/hopixParser.mly"
      (
        IfThenElse (e1, e2, e3)
      )
# 357 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = x_inlined2;
          MenhirLib.EngineTypes.startp = _startpos_x_inlined2_;
          MenhirLib.EngineTypes.endp = _endpos_x_inlined2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _5;
            MenhirLib.EngineTypes.startp = _startpos__5_;
            MenhirLib.EngineTypes.endp = _endpos__5_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _4;
              MenhirLib.EngineTypes.startp = _startpos__4_;
              MenhirLib.EngineTypes.endp = _endpos__4_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = x_inlined1;
                MenhirLib.EngineTypes.startp = _startpos_x_inlined1_;
                MenhirLib.EngineTypes.endp = _endpos_x_inlined1_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _;
                  MenhirLib.EngineTypes.semv = _2;
                  MenhirLib.EngineTypes.startp = _startpos__2_;
                  MenhirLib.EngineTypes.endp = _endpos__2_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _menhir_s;
                    MenhirLib.EngineTypes.semv = x;
                    MenhirLib.EngineTypes.startp = _startpos_x_;
                    MenhirLib.EngineTypes.endp = _endpos_x_;
                    MenhirLib.EngineTypes.next = _menhir_stack;
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let x_inlined2 : (HopixAST.expression) = Obj.magic x_inlined2 in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let x_inlined1 : (HopixAST.pattern) = Obj.magic x_inlined1 in
        let _2 : unit = Obj.magic _2 in
        let x : (HopixAST.identifier) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined2_ in
        let _v : (HopixAST.function_definition HopixAST.polymorphic_definition) = let e =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined2_, _startpos_x_inlined2_, x_inlined2) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 81 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 423 "src/hopixParser.ml"
          
        in
        let p =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 81 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 435 "src/hopixParser.ml"
          
        in
        let id =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 81 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 446 "src/hopixParser.ml"
          
        in
        
# 45 "src/hopixParser.mly"
(
  (id, None, FunctionDefinition(p, e))
)
# 454 "src/hopixParser.ml"
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
# 11 "src/hopixParser.mly"
       (string)
# 475 "src/hopixParser.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (HopixAST.identifier) = 
# 60 "src/hopixParser.mly"
(
  Id x
)
# 485 "src/hopixParser.ml"
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
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (HopixAST.t) = 
# 211 "<standard.mly>"
    ( [] )
# 503 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : (HopixAST.t) = Obj.magic xs in
        let x : (HopixAST.definition) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (HopixAST.t) = let x =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 81 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 540 "src/hopixParser.ml"
          
        in
        
# 213 "<standard.mly>"
    ( x :: xs )
# 546 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (HopixAST.literal) = 
# 76 "src/hopixParser.mly"
           ( LBool true )
# 571 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (HopixAST.literal) = 
# 77 "src/hopixParser.mly"
            ( LBool false )
# 596 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = i;
          MenhirLib.EngineTypes.startp = _startpos_i_;
          MenhirLib.EngineTypes.endp = _endpos_i_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let i : (
# 10 "src/hopixParser.mly"
       (Mint.t)
# 617 "src/hopixParser.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (HopixAST.literal) = 
# 78 "src/hopixParser.mly"
                ( LInt i )
# 625 "src/hopixParser.ml"
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
        let x : (HopixAST.identifier) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (HopixAST.pattern) = let id =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 81 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 655 "src/hopixParser.ml"
          
        in
        
# 56 "src/hopixParser.mly"
                           ( PVariable(id) )
# 661 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = _1;
          MenhirLib.EngineTypes.startp = _startpos__1_;
          MenhirLib.EngineTypes.endp = _endpos__1_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__1_ in
        let _v : (HopixAST.pattern) = 
# 57 "src/hopixParser.mly"
                             ( PWildcard )
# 686 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = l;
          MenhirLib.EngineTypes.startp = _startpos_l_;
          MenhirLib.EngineTypes.endp = _endpos_l_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let l : (HopixAST.pattern Position.located list) = Obj.magic l in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_l_ in
        let _endpos = _endpos_l_ in
        let _v : (HopixAST.pattern) = 
# 51 "src/hopixParser.mly"
    (
      PTuple(l)
    )
# 713 "src/hopixParser.ml"
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
            MenhirLib.EngineTypes.semv = v;
            MenhirLib.EngineTypes.startp = _startpos_v_;
            MenhirLib.EngineTypes.endp = _endpos_v_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : unit = Obj.magic _2 in
        let v : (HopixAST.t) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos__2_ in
        let _v : (HopixAST.t) = 
# 21 "src/hopixParser.mly"
(
  v
)
# 747 "src/hopixParser.ml"
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
        let x : (HopixAST.function_definition HopixAST.polymorphic_definition) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (HopixAST.function_definition HopixAST.polymorphic_definition list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 772 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (HopixAST.function_definition HopixAST.polymorphic_definition list) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x : (HopixAST.function_definition HopixAST.polymorphic_definition) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (HopixAST.function_definition HopixAST.polymorphic_definition list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 811 "src/hopixParser.ml"
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
        let x : (HopixAST.pattern) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (HopixAST.pattern Position.located list) = let x =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 81 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 841 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 847 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _2;
            MenhirLib.EngineTypes.startp = _startpos__2_;
            MenhirLib.EngineTypes.endp = _endpos__2_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let xs : (HopixAST.pattern Position.located list) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x : (HopixAST.pattern) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (HopixAST.pattern Position.located list) = let x =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 81 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 891 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 897 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = x_inlined1;
          MenhirLib.EngineTypes.startp = _startpos_x_inlined1_;
          MenhirLib.EngineTypes.endp = _endpos_x_inlined1_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _3;
            MenhirLib.EngineTypes.startp = _startpos__3_;
            MenhirLib.EngineTypes.endp = _endpos__3_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _menhir_s;
                MenhirLib.EngineTypes.semv = _1;
                MenhirLib.EngineTypes.startp = _startpos__1_;
                MenhirLib.EngineTypes.endp = _endpos__1_;
                MenhirLib.EngineTypes.next = _menhir_stack;
              };
            };
          };
        } = _menhir_stack in
        let x_inlined1 : (HopixAST.expression) = Obj.magic x_inlined1 in
        let _3 : unit = Obj.magic _3 in
        let x : (HopixAST.identifier) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (HopixAST.value_definition) = let y =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 81 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 949 "src/hopixParser.ml"
          
        in
        let x =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 81 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 960 "src/hopixParser.ml"
          
        in
        
# 35 "src/hopixParser.mly"
(
  SimpleValue (x ,None, y)  (*UTILISER X? OU OPTION(X)  pour option*) 
)
# 968 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = l;
          MenhirLib.EngineTypes.startp = _startpos_l_;
          MenhirLib.EngineTypes.endp = _endpos_l_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let l : (HopixAST.function_definition HopixAST.polymorphic_definition list) = Obj.magic l in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_l_ in
        let _v : (HopixAST.value_definition) = 
# 39 "src/hopixParser.mly"
(
  RecFunctions(l)
)
# 1002 "src/hopixParser.ml"
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
  
end

let program =
  fun lexer lexbuf ->
    (Obj.magic (MenhirInterpreter.entry `Legacy 0 lexer lexbuf) : (HopixAST.t))

module Incremental = struct
  
  let program =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (HopixAST.t) MenhirInterpreter.checkpoint)
  
end

# 269 "<standard.mly>"
  

# 1043 "src/hopixParser.ml"
