
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20210419

module MenhirBasics = struct
  
  exception Error
  
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
    | INT of (
# 10 "flap/src/fopixParser.mly"
      (Mint.t)
# 37 "flap/src/fopixParser.ml"
  )
    | IN
    | IF
    | ID of (
# 11 "flap/src/fopixParser.mly"
      (string)
# 44 "flap/src/fopixParser.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

# 1 "flap/src/fopixParser.mly"
   (* Emacs, be a -*- tuareg -*- to open this file. *)

  open FopixAST


# 76 "flap/src/fopixParser.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | ASSIGNS ->
          41
      | BANG ->
          40
      | CALL ->
          39
      | COLON ->
          38
      | COMMA ->
          37
      | DEF ->
          36
      | DO ->
          35
      | ELSE ->
          34
      | END ->
          33
      | EOF ->
          32
      | EQ ->
          31
      | EQUAL ->
          30
      | EVAL ->
          29
      | EXTERNAL ->
          28
      | GT ->
          27
      | GTE ->
          26
      | ID _ ->
          25
      | IF ->
          24
      | IN ->
          23
      | INT _ ->
          22
      | LAND ->
          21
      | LBRACKET ->
          20
      | LOR ->
          19
      | LPAREN ->
          18
      | LT ->
          17
      | LTE ->
          16
      | MINUS ->
          15
      | ORELSE ->
          14
      | PIPE ->
          13
      | PLUS ->
          12
      | RBRACKET ->
          11
      | RPAREN ->
          10
      | SEMICOLON ->
          9
      | SLASH ->
          8
      | STAR ->
          7
      | SWITCH ->
          6
      | THEN ->
          5
      | UPPERSAND ->
          4
      | VAL ->
          3
      | WHILE ->
          2
      | WITH ->
          1
  
  and error_terminal =
    0
  
  and token2value : token -> Obj.t =
    fun _tok ->
      match _tok with
      | ASSIGNS ->
          Obj.repr ()
      | BANG ->
          Obj.repr ()
      | CALL ->
          Obj.repr ()
      | COLON ->
          Obj.repr ()
      | COMMA ->
          Obj.repr ()
      | DEF ->
          Obj.repr ()
      | DO ->
          Obj.repr ()
      | ELSE ->
          Obj.repr ()
      | END ->
          Obj.repr ()
      | EOF ->
          Obj.repr ()
      | EQ ->
          Obj.repr ()
      | EQUAL ->
          Obj.repr ()
      | EVAL ->
          Obj.repr ()
      | EXTERNAL ->
          Obj.repr ()
      | GT ->
          Obj.repr ()
      | GTE ->
          Obj.repr ()
      | ID _v ->
          Obj.repr _v
      | IF ->
          Obj.repr ()
      | IN ->
          Obj.repr ()
      | INT _v ->
          Obj.repr _v
      | LAND ->
          Obj.repr ()
      | LBRACKET ->
          Obj.repr ()
      | LOR ->
          Obj.repr ()
      | LPAREN ->
          Obj.repr ()
      | LT ->
          Obj.repr ()
      | LTE ->
          Obj.repr ()
      | MINUS ->
          Obj.repr ()
      | ORELSE ->
          Obj.repr ()
      | PIPE ->
          Obj.repr ()
      | PLUS ->
          Obj.repr ()
      | RBRACKET ->
          Obj.repr ()
      | RPAREN ->
          Obj.repr ()
      | SEMICOLON ->
          Obj.repr ()
      | SLASH ->
          Obj.repr ()
      | STAR ->
          Obj.repr ()
      | SWITCH ->
          Obj.repr ()
      | THEN ->
          Obj.repr ()
      | UPPERSAND ->
          Obj.repr ()
      | VAL ->
          Obj.repr ()
      | WHILE ->
          Obj.repr ()
      | WITH ->
          Obj.repr ()
  
  and default_reduction =
    (8, "\000*\000\000\000\000\000\000\000\000\007\000\000\006\000\000\000\000\000\000\000$\000\023\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000.\000\011\000\000\000\000\000\n\000\030\000\000'&\000\0000\000\000\000\000\028\029\000\000\000\000\000\000\027\000\000\000\000\005\000\000\000\000\000\000\000,\"\000\000\000\000\001\000)\000 ")
  
  and error =
    (42, "\144\000\000\012\136\000\000\000\000\000\000\000\000\004\000\000\000\000\000\b\000:\000\"\192\001\014\128\b\176\000@\000\000\004\000\000\000\000\000\b\000:\000\"\192\001\000\000\000\016\000\000\000\000\000\000\000\232\000\139\000\004:\000\"\192\001\000\000\000\000\000\003\160\002,\000\017W\255\244\247\240: \"\192\001\014\128\b\176\000D\028\157\195\016\000\000\000\128\000\000: \"\192\001\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\001\233\2201\004\014\128\b\176\000E_\253\211\223\192\232\000\139\000\004\001\217\2201\000\014\128\b\176\000E_\253\211\223\192\232\000\139\000\004U\255\221=\252\014\128\b\176\000E_\253\211\223\192\232\000\139\000\004U\255\221=\252\014\128\b\176\000E_\241\208\207\192\232\000\139\000\004U\255\029\012\252\014\128\b\176\000E_\253\211\223\192\232\000\139\000\004U\255\221=\252\014\128\b\176\000E_\241\208\207\192\232\000\139\000\004U\255\029\012\252\014\128\b\176\000E_\241\208\207\193W\255t\247\241:\000\"\192\001\021\127\247O\127\003\160\002,\000\016\000\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\\\157\195\016\000\232\000\139\000\004\001\201\2201 \014\128\b\176\000@\028\157\195\020\000\000\000\000\000\000\001\233\2201\000\000\000\000\000\000\000\028\157\211\016\000\232\b\139\001\006\000\000\000\000\000\000\000\000\000\000\000\000`\000\004\000\232\000\139\000\006\000\000\000\000\000\000s\247\012P\000\000 \000\004\000\232\000\139\000\004\001\201\2201@\000\000\000\000\000\000\000\000\000\000\000\007'p\196\000:\000\"\192\001\021\127\247O\127\000\028\157\195\017\000\232\000\139\000\004\001\201\2201@\000\000\000\000\000\001\028\157\195\216\128\000\000\001\000\000\000\000\000\000\002\000\000\000\128\000\000\000\000\000\000\000\232\000\139\000\004\017\201\220=\136\000\000\000\016\000\000\000\002\000\000\000\000\128\001\000\000\000 \000\000\004\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\000\128\003\160\002,\000\016G'p\246 \000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000@\000\0002 \000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\006\n\000\000\0001\0007\006*\006*\000\t\000\003\006*\000\030\000\000\006*\006*\000\000\006*\000\003\006*\006*\005T\0000\006*\000\000\000X\000\000\005\018\006*\000\146\006*\004\154\006*\000\220\006*\001&\006*\001p\006*\001\186\006*\003,\006*\003v\006*\002\004\006*\002N\006*\003\192\006*\004\n\006*\004T\000H\006*\002\152\006*\000\000\000`\000\000\004\154\006*\004\154\006*\005T\000\000\004\154\000\000\004\154\006*\000\000\000\000\004\176\006*\000\000\005\018\000\019\006*\005\138\000\000\000\000\005\246\006*\002\226\004\154\006*\005\192\000\000\004\154\000F\000.\000X\000\000\006*\004\214\000d\000z\000\026\003 \000\026\000\000\000\000\000\162\000\130\006*\005\018\000\000\000\130\000\000\0050\000\000"), (16, "\000\029\000\014\000\029\000\018\000\029\001.\000\029\000\029\000\029\000\029\000\029\000\029\000\029\000\029\000\029\000\029\000\029\000B\000\029\000\029\000\029\000\030\000\029\000\129\001:\000\029\000\029\000\029\000\029\000\"\000\029\000\029\000\029\000\029\000\029\000\029\000\029\000]\001\130\000]\000*\000]\000R\000]\000]\000]\000]\000]\000]\000]\000]\000]\000]\000]\000^\000]\000]\000]\000\230\000]\001b\001f\000]\000]\000]\000]\001j\000]\000]\000]\000]\000]\000]\000]\0005\001z\0005\000\210\0005\001~\0005\0005\0005\0005\0005\0005\0005\0005\0005\0005\0005\001\150\0005\000n\0005\001\154\0005\001\171\000\000\0005\0005\0005\0005\000\000\0005\0005\0005\0005\0005\0005\0005\0009\000\000\0009\000\000\0009\000\000\0009\0009\0009\0009\0009\0009\0009\0009\0009\0009\0009\000\000\0009\000n\0009\000\000\0009\000\000\000\000\0009\0009\0009\0009\000\000\0009\0009\0009\0009\0009\0009\0009\000e\000\000\000e\000\000\000e\000\000\000f\000v\000~\000e\000e\000\134\000e\000e\000\142\000\150\000\158\000\000\000\166\000n\000\174\000\000\000e\000\000\000\000\000\182\000\190\000e\000e\000\000\000\198\000e\000e\000e\000e\000e\000e\000-\000\000\000-\000\000\000-\000\000\000f\000v\000-\000-\000-\000-\000-\000-\000-\000-\000-\000\000\000-\000n\000-\000\000\000-\000\000\000\000\000-\000-\000-\000-\000\000\000-\000-\000-\000-\000-\000-\000-\0001\000\000\0001\000\000\0001\000\000\000f\000v\0001\0001\0001\0001\0001\0001\0001\0001\0001\000\000\0001\000n\0001\000\000\0001\000\000\000\000\0001\0001\0001\0001\000\000\0001\0001\0001\0001\0001\0001\0001\000U\000\000\000U\000\000\000U\000\000\000f\000v\000U\000U\000U\000\134\000U\000U\000\142\000\150\000\158\000\000\000U\000n\000\174\000\000\000U\000\000\000\000\000\182\000\190\000U\000U\000\000\000\198\000U\000U\000U\000U\000U\000U\000Q\000\000\000Q\000\000\000Q\000\000\000f\000v\000Q\000Q\000Q\000\134\000Q\000Q\000\142\000\150\000\158\000\000\000Q\000n\000Q\000\000\000Q\000\000\000\000\000\182\000\190\000Q\000Q\000\000\000\198\000Q\000Q\000Q\000Q\000Q\000Q\000a\000\000\000a\000\000\000a\000\000\000f\000v\000a\000a\000a\000\134\000a\000a\000\142\000\150\000\158\000\000\000\166\000n\000\174\000\000\000a\000\000\000\000\000\182\000\190\000a\000a\000\000\000\198\000a\000a\000a\000a\000a\000a\000!\000\000\000!\000\000\000!\000\000\000f\000v\000~\000!\000!\000\134\000!\000!\000\142\000\150\000\158\000\000\000\166\000n\000\174\000\000\000!\000\000\000\000\000\182\000\190\000!\000!\000\000\000\198\000!\000!\000!\000!\000!\000!\000I\000\000\000I\000\169\000I\000\000\000f\000v\000I\000I\000I\000\134\000I\000I\000\142\000\000\000\000\000\000\000I\000n\000I\000\000\000I\000\000\000\000\000\000\000\000\000I\000I\000\000\001\134\000I\000I\000I\000I\000I\000I\000E\000\000\000E\000\000\000E\000\000\000f\000v\000E\000E\000E\000\134\000E\000E\000\142\000\000\000\000\000\000\000E\000n\000E\000\000\000E\000\000\000\000\000\000\000\000\000E\000E\000\000\000\000\000E\000E\000E\000E\000E\000E\000A\000\000\000A\000\000\000A\000\000\000f\000v\000A\000A\000A\000\134\000A\000A\000\142\000\000\000\000\000\000\000A\000n\000A\000\000\000A\000\000\000\000\000\000\000\000\000A\000A\000\000\000\000\000A\000A\000A\000A\000A\000A\000=\000\000\000=\000\000\000=\000\000\000f\000v\000=\000=\000=\000\134\000=\000=\000\142\000\000\000\000\000\000\000=\000n\000=\000\000\000=\000\000\000\000\000\000\000\000\000=\000=\000\000\000\000\000=\000=\000=\000=\000=\000=\000M\000\000\000M\000\000\000M\000\000\000f\000v\000M\000M\000M\000\134\000M\000M\000\142\000\000\000\000\000\000\000M\000n\000M\000\000\000M\000\000\000\000\000\000\000\000\000M\000M\000\000\000\000\000M\000M\000M\000M\000M\000M\000\005\000\000\000\238\000\000\000f\000v\000~\001\006\000\206\000\134\000\000\000\000\000\142\000\150\000\158\000\000\000\166\000n\000\174\000\000\001\014\001\030\000\185\000\182\000\190\000\005\000\005\000\000\000\198\000\005\000\r\000\246\001N\000\005\000f\000v\000~\000\000\000\000\000\134\000\000\000\185\000\142\000\150\000\158\000\000\000\166\000n\000\174\000\000\000\000\000\000\000\000\000\182\000\190\000\r\000\r\000\000\000\198\000\r\000\t\000\000\000\000\000\r\000f\000v\000~\000\177\000\000\000\134\000\157\000\157\000\142\000\150\000\158\000\n\000\166\000n\000\174\000\000\000\000\000\000\000\000\000\182\000\190\000\t\000\t\000\000\000\198\000\t\000\157\000N\000\000\000\t\000\218\000\000\000\000\000f\000v\000~\001^\001n\000\134\000\000\000y\000\142\000\150\000\158\001v\000\166\000n\000\174\000\000\000\000\000\000\000\000\000\182\000\190\000\000\000\000\000\000\000\198\000\000\000\254\000f\000v\000~\000\000\000\000\000\134\000\000\000\000\000\142\000\150\000\158\000\000\000\166\000n\000\174\000\000\000\000\000\000\000\000\000\182\000\190\000\000\000\000\000\000\000\198\000\000\0016\000f\000v\000~\000\000\000\000\000\134\000\000\000\000\000\142\000\150\000\158\000\000\000\166\000n\000\174\000\000\000\000\000\000\000\000\000\182\000\190\000\000\000\000\000\000\000\198\000\000\001V\000f\000v\001B\000\007\000\000\000\134\000\n\000\000\000\142\000\150\000\158\000\000\000\166\000n\000\174\000\000\000\000\000\000\000\000\000\182\000\190\000\022\000\026\000&\000\198\000.\000\000\000\000\000\000\000\137\000\000\001^\001n\000\145\000\000\000y\000\000\0002\000\000\001v\000\000\0006\000\000\000:\000>\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\145\000\000\000\000\000\000\000\000\000\000\000F\001\018"))
  
  and lhs =
    (4, "\011\187\186\170\170\170\170\170\170\170\170\170\170\170\170\153\136wfUD3\"\017")
  
  and goto =
    ((8, "\007\000\000\000\015\b\000\000\n\000\000\022\030\000\"\000\000$\000\000\018\000\000\000\000&\000(\000*\000,\000.\0000\0002\0004\0006\0008\000:\000<\000>\000\000@\000\020\000\000\000\000B\000D\000\000\000\000\000\003\000\000\000\024\000\000\000F\000\000\000\000H\000\000J\000\000\000\000\000\000\000L\000\000\000\030\000\\\000\000\000\000P\000\000\000\000\030\000"), (8, "Fi\022WGKj9lJ\025\0228ISP\023Gd\025\025CJemAl;\019\027\029\031!#%')+-/136=?MRU]ch"))
  
  and semantic_action =
    [|
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
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _3 : unit = Obj.magic _3 in
        let x : (
# 11 "flap/src/fopixParser.mly"
      (string)
# 309 "flap/src/fopixParser.ml"
        ) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (FopixAST.definition) = let e =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 322 "flap/src/fopixParser.ml"
          
        in
        let x =
          let x = 
# 154 "flap/src/fopixParser.mly"
                         (
  Id x
)
# 331 "flap/src/fopixParser.ml"
           in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 338 "flap/src/fopixParser.ml"
          
        in
        
# 36 "flap/src/fopixParser.mly"
(
  DefineValue (x, e)
)
# 346 "flap/src/fopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _6;
            MenhirLib.EngineTypes.startp = _startpos__6_;
            MenhirLib.EngineTypes.endp = _endpos__6_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _5;
              MenhirLib.EngineTypes.startp = _startpos__5_;
              MenhirLib.EngineTypes.endp = _endpos__5_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = xs;
                MenhirLib.EngineTypes.startp = _startpos_xs_;
                MenhirLib.EngineTypes.endp = _endpos_xs_;
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
          };
        } = _menhir_stack in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _6 : unit = Obj.magic _6 in
        let _5 : unit = Obj.magic _5 in
        let xs : (FopixAST.formals) = Obj.magic xs in
        let _3 : unit = Obj.magic _3 in
        let x : (
# 11 "flap/src/fopixParser.mly"
      (string)
# 408 "flap/src/fopixParser.ml"
        ) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (FopixAST.definition) = let e =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 421 "flap/src/fopixParser.ml"
          
        in
        let xs = 
# 232 "<standard.mly>"
    ( xs )
# 427 "flap/src/fopixParser.ml"
         in
        let f =
          let x = 
# 158 "flap/src/fopixParser.mly"
                                  (
  FunId x
)
# 435 "flap/src/fopixParser.ml"
           in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 442 "flap/src/fopixParser.ml"
          
        in
        
# 42 "flap/src/fopixParser.mly"
(
  DefineFunction (f, xs, e)
)
# 450 "flap/src/fopixParser.ml"
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
        } = _menhir_stack in
        let x : (FopixAST.expression) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_x_ in
        let _v : (FopixAST.definition) = let e = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 484 "flap/src/fopixParser.ml"
         in
        
# 46 "flap/src/fopixParser.mly"
(
  DefineValue (Id "_", e)
)
# 491 "flap/src/fopixParser.ml"
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
          MenhirLib.EngineTypes.semv = n;
          MenhirLib.EngineTypes.startp = _startpos_n_;
          MenhirLib.EngineTypes.endp = _endpos_n_;
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
        let n : (
# 10 "flap/src/fopixParser.mly"
      (Mint.t)
# 530 "flap/src/fopixParser.ml"
        ) = Obj.magic n in
        let _3 : unit = Obj.magic _3 in
        let x : (
# 11 "flap/src/fopixParser.mly"
      (string)
# 536 "flap/src/fopixParser.ml"
        ) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_n_ in
        let _v : (FopixAST.definition) = let f =
          let x = 
# 158 "flap/src/fopixParser.mly"
                                  (
  FunId x
)
# 548 "flap/src/fopixParser.ml"
           in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 555 "flap/src/fopixParser.ml"
          
        in
        
# 50 "flap/src/fopixParser.mly"
(
  ExternalFunction (f, Int64.to_int n)
)
# 563 "flap/src/fopixParser.ml"
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
# 10 "flap/src/fopixParser.mly"
      (Mint.t)
# 584 "flap/src/fopixParser.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (FopixAST.expression) = let l = 
# 146 "flap/src/fopixParser.mly"
(
  LInt x
)
# 594 "flap/src/fopixParser.ml"
         in
        
# 56 "flap/src/fopixParser.mly"
(
  Literal l
)
# 601 "flap/src/fopixParser.ml"
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
        } = _menhir_stack in
        let x : (
# 11 "flap/src/fopixParser.mly"
      (string)
# 628 "flap/src/fopixParser.ml"
        ) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_x_ in
        let _v : (FopixAST.expression) = let l =
          let f = 
# 158 "flap/src/fopixParser.mly"
                                  (
  FunId x
)
# 640 "flap/src/fopixParser.ml"
           in
          
# 150 "flap/src/fopixParser.mly"
(
  LFun f
)
# 647 "flap/src/fopixParser.ml"
          
        in
        
# 56 "flap/src/fopixParser.mly"
(
  Literal l
)
# 655 "flap/src/fopixParser.ml"
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
# 11 "flap/src/fopixParser.mly"
      (string)
# 676 "flap/src/fopixParser.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (FopixAST.expression) = let x = 
# 154 "flap/src/fopixParser.mly"
                         (
  Id x
)
# 686 "flap/src/fopixParser.ml"
         in
        
# 60 "flap/src/fopixParser.mly"
(
  Variable x
)
# 693 "flap/src/fopixParser.ml"
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
        let x_inlined2 : (FopixAST.expression) = Obj.magic x_inlined2 in
        let _5 : unit = Obj.magic _5 in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _3 : unit = Obj.magic _3 in
        let x : (
# 11 "flap/src/fopixParser.mly"
      (string)
# 748 "flap/src/fopixParser.ml"
        ) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_x_inlined2_ in
        let _v : (FopixAST.expression) = let e2 =
          let x = x_inlined2 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 761 "flap/src/fopixParser.ml"
          
        in
        let e1 =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 771 "flap/src/fopixParser.ml"
          
        in
        let x =
          let x = 
# 154 "flap/src/fopixParser.mly"
                         (
  Id x
)
# 780 "flap/src/fopixParser.ml"
           in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 787 "flap/src/fopixParser.ml"
          
        in
        
# 68 "flap/src/fopixParser.mly"
(
  Define (x, e1, e2)
)
# 795 "flap/src/fopixParser.ml"
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
          MenhirLib.EngineTypes.semv = _7;
          MenhirLib.EngineTypes.startp = _startpos__7_;
          MenhirLib.EngineTypes.endp = _endpos__7_;
          MenhirLib.EngineTypes.next = {
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
          };
        } = _menhir_stack in
        let _7 : unit = Obj.magic _7 in
        let x_inlined2 : (FopixAST.expression) = Obj.magic x_inlined2 in
        let _5 : unit = Obj.magic _5 in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _3 : unit = Obj.magic _3 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__7_ in
        let _v : (FopixAST.expression) = let f =
          let x = x_inlined2 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 866 "flap/src/fopixParser.ml"
          
        in
        let t =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 876 "flap/src/fopixParser.ml"
          
        in
        let c = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 884 "flap/src/fopixParser.ml"
         in
        
# 76 "flap/src/fopixParser.mly"
(
  IfThenElse (c, t, f)
)
# 891 "flap/src/fopixParser.ml"
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
          MenhirLib.EngineTypes.semv = _4;
          MenhirLib.EngineTypes.startp = _startpos__4_;
          MenhirLib.EngineTypes.endp = _endpos__4_;
          MenhirLib.EngineTypes.next = {
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
          };
        } = _menhir_stack in
        let _4 : unit = Obj.magic _4 in
        let xs : (FopixAST.expression list) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x : (
# 11 "flap/src/fopixParser.mly"
      (string)
# 933 "flap/src/fopixParser.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos__4_ in
        let _v : (FopixAST.expression) = let es = 
# 232 "<standard.mly>"
    ( xs )
# 941 "flap/src/fopixParser.ml"
         in
        let f = 
# 158 "flap/src/fopixParser.mly"
                                  (
  FunId x
)
# 948 "flap/src/fopixParser.ml"
         in
        
# 81 "flap/src/fopixParser.mly"
(
  FunCall (f, es)
)
# 955 "flap/src/fopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _1 : unit = Obj.magic _1 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (FopixAST.expression) = let r =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 998 "flap/src/fopixParser.ml"
          
        in
        let b = 
# 132 "flap/src/fopixParser.mly"
        ( "`+`"  )
# 1004 "flap/src/fopixParser.ml"
         in
        let l = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1011 "flap/src/fopixParser.ml"
         in
        
# 84 "flap/src/fopixParser.mly"
                                                      (
  FunCall (FunId b, [l; r])
)
# 1018 "flap/src/fopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _1 : unit = Obj.magic _1 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (FopixAST.expression) = let r =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1061 "flap/src/fopixParser.ml"
          
        in
        let b = 
# 133 "flap/src/fopixParser.mly"
        ( "`-`"  )
# 1067 "flap/src/fopixParser.ml"
         in
        let l = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1074 "flap/src/fopixParser.ml"
         in
        
# 84 "flap/src/fopixParser.mly"
                                                      (
  FunCall (FunId b, [l; r])
)
# 1081 "flap/src/fopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _1 : unit = Obj.magic _1 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (FopixAST.expression) = let r =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1124 "flap/src/fopixParser.ml"
          
        in
        let b = 
# 134 "flap/src/fopixParser.mly"
        ( "`*`"  )
# 1130 "flap/src/fopixParser.ml"
         in
        let l = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1137 "flap/src/fopixParser.ml"
         in
        
# 84 "flap/src/fopixParser.mly"
                                                      (
  FunCall (FunId b, [l; r])
)
# 1144 "flap/src/fopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _1 : unit = Obj.magic _1 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (FopixAST.expression) = let r =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1187 "flap/src/fopixParser.ml"
          
        in
        let b = 
# 135 "flap/src/fopixParser.mly"
        ( "`/`"  )
# 1193 "flap/src/fopixParser.ml"
         in
        let l = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1200 "flap/src/fopixParser.ml"
         in
        
# 84 "flap/src/fopixParser.mly"
                                                      (
  FunCall (FunId b, [l; r])
)
# 1207 "flap/src/fopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _1 : unit = Obj.magic _1 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (FopixAST.expression) = let r =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1250 "flap/src/fopixParser.ml"
          
        in
        let b = 
# 136 "flap/src/fopixParser.mly"
        ( "`>?`"  )
# 1256 "flap/src/fopixParser.ml"
         in
        let l = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1263 "flap/src/fopixParser.ml"
         in
        
# 84 "flap/src/fopixParser.mly"
                                                      (
  FunCall (FunId b, [l; r])
)
# 1270 "flap/src/fopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _1 : unit = Obj.magic _1 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (FopixAST.expression) = let r =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1313 "flap/src/fopixParser.ml"
          
        in
        let b = 
# 137 "flap/src/fopixParser.mly"
        ( "`>=?`" )
# 1319 "flap/src/fopixParser.ml"
         in
        let l = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1326 "flap/src/fopixParser.ml"
         in
        
# 84 "flap/src/fopixParser.mly"
                                                      (
  FunCall (FunId b, [l; r])
)
# 1333 "flap/src/fopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _1 : unit = Obj.magic _1 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (FopixAST.expression) = let r =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1376 "flap/src/fopixParser.ml"
          
        in
        let b = 
# 138 "flap/src/fopixParser.mly"
        ( "`<?`"  )
# 1382 "flap/src/fopixParser.ml"
         in
        let l = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1389 "flap/src/fopixParser.ml"
         in
        
# 84 "flap/src/fopixParser.mly"
                                                      (
  FunCall (FunId b, [l; r])
)
# 1396 "flap/src/fopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _1 : unit = Obj.magic _1 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (FopixAST.expression) = let r =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1439 "flap/src/fopixParser.ml"
          
        in
        let b = 
# 139 "flap/src/fopixParser.mly"
        ( "`<=?`" )
# 1445 "flap/src/fopixParser.ml"
         in
        let l = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1452 "flap/src/fopixParser.ml"
         in
        
# 84 "flap/src/fopixParser.mly"
                                                      (
  FunCall (FunId b, [l; r])
)
# 1459 "flap/src/fopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _1 : unit = Obj.magic _1 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (FopixAST.expression) = let r =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1502 "flap/src/fopixParser.ml"
          
        in
        let b = 
# 140 "flap/src/fopixParser.mly"
        ( "`=?`"  )
# 1508 "flap/src/fopixParser.ml"
         in
        let l = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1515 "flap/src/fopixParser.ml"
         in
        
# 84 "flap/src/fopixParser.mly"
                                                      (
  FunCall (FunId b, [l; r])
)
# 1522 "flap/src/fopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _1 : unit = Obj.magic _1 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (FopixAST.expression) = let r =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1565 "flap/src/fopixParser.ml"
          
        in
        let b = 
# 141 "flap/src/fopixParser.mly"
        ( "`&&`" )
# 1571 "flap/src/fopixParser.ml"
         in
        let l = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1578 "flap/src/fopixParser.ml"
         in
        
# 84 "flap/src/fopixParser.mly"
                                                      (
  FunCall (FunId b, [l; r])
)
# 1585 "flap/src/fopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _1 : unit = Obj.magic _1 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (FopixAST.expression) = let r =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1628 "flap/src/fopixParser.ml"
          
        in
        let b = 
# 142 "flap/src/fopixParser.mly"
        ( "`||`" )
# 1634 "flap/src/fopixParser.ml"
         in
        let l = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1641 "flap/src/fopixParser.ml"
         in
        
# 84 "flap/src/fopixParser.mly"
                                                      (
  FunCall (FunId b, [l; r])
)
# 1648 "flap/src/fopixParser.ml"
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
          MenhirLib.EngineTypes.semv = _6;
          MenhirLib.EngineTypes.startp = _startpos__6_;
          MenhirLib.EngineTypes.endp = _endpos__6_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = xs;
            MenhirLib.EngineTypes.startp = _startpos_xs_;
            MenhirLib.EngineTypes.endp = _endpos_xs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _4;
              MenhirLib.EngineTypes.startp = _startpos__4_;
              MenhirLib.EngineTypes.endp = _endpos__4_;
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
        let _6 : unit = Obj.magic _6 in
        let xs : (FopixAST.expression list) = Obj.magic xs in
        let _4 : unit = Obj.magic _4 in
        let _3 : unit = Obj.magic _3 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__6_ in
        let _v : (FopixAST.expression) = let es = 
# 232 "<standard.mly>"
    ( xs )
# 1708 "flap/src/fopixParser.ml"
         in
        let f = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1715 "flap/src/fopixParser.ml"
         in
        
# 88 "flap/src/fopixParser.mly"
(
  UnknownFunCall (f, es)
)
# 1722 "flap/src/fopixParser.ml"
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
        } = _menhir_stack in
        let _4 : unit = Obj.magic _4 in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _2 : unit = Obj.magic _2 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos__4_ in
        let _v : (FopixAST.expression) = let i =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1772 "flap/src/fopixParser.ml"
          
        in
        let e = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1780 "flap/src/fopixParser.ml"
         in
        
# 91 "flap/src/fopixParser.mly"
                                                                (
  FunCall (FunId "read_block", [e; i])
)
# 1787 "flap/src/fopixParser.ml"
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
        let x_inlined2 : (FopixAST.expression) = Obj.magic x_inlined2 in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _2 : unit = Obj.magic _2 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined2_ in
        let _v : (FopixAST.expression) = let v =
          let x = x_inlined2 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1851 "flap/src/fopixParser.ml"
          
        in
        let i =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1861 "flap/src/fopixParser.ml"
          
        in
        let e = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1869 "flap/src/fopixParser.ml"
         in
        
# 96 "flap/src/fopixParser.mly"
                                (
  FunCall (FunId "write_block", [e; i; v])
)
# 1876 "flap/src/fopixParser.ml"
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
        let x_inlined1 : (FopixAST.expression) = Obj.magic x_inlined1 in
        let _2 : unit = Obj.magic _2 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (FopixAST.expression) = let e2 =
          let x = x_inlined1 in
          
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1919 "flap/src/fopixParser.ml"
          
        in
        let e1 = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 1927 "flap/src/fopixParser.ml"
         in
        
# 99 "flap/src/fopixParser.mly"
                                                          (
  Define (Id "_", e1, e2)
)
# 1934 "flap/src/fopixParser.ml"
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
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = b;
            MenhirLib.EngineTypes.startp = _startpos_b_;
            MenhirLib.EngineTypes.endp = _endpos_b_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _3;
              MenhirLib.EngineTypes.startp = _startpos__3_;
              MenhirLib.EngineTypes.endp = _endpos__3_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = e;
                MenhirLib.EngineTypes.startp = _startpos_e_;
                MenhirLib.EngineTypes.endp = _endpos_e_;
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
        } = _menhir_stack in
        let _5 : unit = Obj.magic _5 in
        let b : (FopixAST.expression) = Obj.magic b in
        let _3 : unit = Obj.magic _3 in
        let e : (FopixAST.expression) = Obj.magic e in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (FopixAST.expression) = 
# 103 "flap/src/fopixParser.mly"
(
  While (e, b)
)
# 1989 "flap/src/fopixParser.ml"
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
          MenhirLib.EngineTypes.semv = _7;
          MenhirLib.EngineTypes.startp = _startpos__7_;
          MenhirLib.EngineTypes.endp = _endpos__7_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = d;
            MenhirLib.EngineTypes.startp = _startpos_d_;
            MenhirLib.EngineTypes.endp = _endpos_d_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _5;
              MenhirLib.EngineTypes.startp = _startpos__5_;
              MenhirLib.EngineTypes.endp = _endpos__5_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = xs;
                MenhirLib.EngineTypes.startp = _startpos_xs_;
                MenhirLib.EngineTypes.endp = _endpos_xs_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _;
                  MenhirLib.EngineTypes.semv = _3;
                  MenhirLib.EngineTypes.startp = _startpos__3_;
                  MenhirLib.EngineTypes.endp = _endpos__3_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _;
                    MenhirLib.EngineTypes.semv = e;
                    MenhirLib.EngineTypes.startp = _startpos_e_;
                    MenhirLib.EngineTypes.endp = _endpos_e_;
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
          };
        } = _menhir_stack in
        let _7 : unit = Obj.magic _7 in
        let d : (FopixAST.expression) = Obj.magic d in
        let _5 : unit = Obj.magic _5 in
        let xs : (FopixAST.expression option list) = Obj.magic xs in
        let _3 : unit = Obj.magic _3 in
        let e : (FopixAST.expression) = Obj.magic e in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__7_ in
        let _v : (FopixAST.expression) = let bs = 
# 232 "<standard.mly>"
    ( xs )
# 2056 "flap/src/fopixParser.ml"
         in
        
# 110 "flap/src/fopixParser.mly"
(
  Switch (e, Array.of_list bs, Some d)
)
# 2063 "flap/src/fopixParser.ml"
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
          MenhirLib.EngineTypes.semv = _5;
          MenhirLib.EngineTypes.startp = _startpos__5_;
          MenhirLib.EngineTypes.endp = _endpos__5_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = xs;
            MenhirLib.EngineTypes.startp = _startpos_xs_;
            MenhirLib.EngineTypes.endp = _endpos_xs_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _3;
              MenhirLib.EngineTypes.startp = _startpos__3_;
              MenhirLib.EngineTypes.endp = _endpos__3_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = e;
                MenhirLib.EngineTypes.startp = _startpos_e_;
                MenhirLib.EngineTypes.endp = _endpos_e_;
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
        } = _menhir_stack in
        let _5 : unit = Obj.magic _5 in
        let xs : (FopixAST.expression option list) = Obj.magic xs in
        let _3 : unit = Obj.magic _3 in
        let e : (FopixAST.expression) = Obj.magic e in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__5_ in
        let _v : (FopixAST.expression) = let bs = 
# 232 "<standard.mly>"
    ( xs )
# 2116 "flap/src/fopixParser.ml"
         in
        
# 114 "flap/src/fopixParser.mly"
(
  Switch (e, Array.of_list bs, None)
)
# 2123 "flap/src/fopixParser.ml"
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
          MenhirLib.EngineTypes.semv = _3;
          MenhirLib.EngineTypes.startp = _startpos__3_;
          MenhirLib.EngineTypes.endp = _endpos__3_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = e;
            MenhirLib.EngineTypes.startp = _startpos_e_;
            MenhirLib.EngineTypes.endp = _endpos_e_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = _1;
              MenhirLib.EngineTypes.startp = _startpos__1_;
              MenhirLib.EngineTypes.endp = _endpos__1_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let e : (FopixAST.expression) = Obj.magic e in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (FopixAST.expression) = 
# 117 "flap/src/fopixParser.mly"
                             (
  e
)
# 2164 "flap/src/fopixParser.ml"
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
        let _v : (FopixAST.t) = 
# 211 "<standard.mly>"
    ( [] )
# 2182 "flap/src/fopixParser.ml"
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
        let xs : (FopixAST.t) = Obj.magic xs in
        let x : (FopixAST.definition) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (FopixAST.t) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 2214 "flap/src/fopixParser.ml"
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
        let _v : (FopixAST.formals) = 
# 142 "<standard.mly>"
    ( [] )
# 2232 "flap/src/fopixParser.ml"
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
        let x : (FopixAST.formals) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (FopixAST.formals) = 
# 144 "<standard.mly>"
    ( x )
# 2257 "flap/src/fopixParser.ml"
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
        let _v : (FopixAST.expression list) = 
# 142 "<standard.mly>"
    ( [] )
# 2275 "flap/src/fopixParser.ml"
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
        let x : (FopixAST.expression list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (FopixAST.expression list) = 
# 144 "<standard.mly>"
    ( x )
# 2300 "flap/src/fopixParser.ml"
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
        let _v : (FopixAST.expression option list) = 
# 142 "<standard.mly>"
    ( [] )
# 2318 "flap/src/fopixParser.ml"
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
        let x : (FopixAST.expression option list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (FopixAST.expression option list) = 
# 144 "<standard.mly>"
    ( x )
# 2343 "flap/src/fopixParser.ml"
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
        let _v : (FopixAST.expression option) = 
# 123 "flap/src/fopixParser.mly"
(
  None
)
# 2370 "flap/src/fopixParser.ml"
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
          MenhirLib.EngineTypes.semv = e;
          MenhirLib.EngineTypes.startp = _startpos_e_;
          MenhirLib.EngineTypes.endp = _endpos_e_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let e : (FopixAST.expression) = Obj.magic e in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_e_ in
        let _endpos = _endpos_e_ in
        let _v : (FopixAST.expression option) = 
# 127 "flap/src/fopixParser.mly"
(
  Some e
)
# 2397 "flap/src/fopixParser.ml"
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
            MenhirLib.EngineTypes.semv = ds;
            MenhirLib.EngineTypes.startp = _startpos_ds_;
            MenhirLib.EngineTypes.endp = _endpos_ds_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let _2 : unit = Obj.magic _2 in
        let ds : (FopixAST.t) = Obj.magic ds in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_ds_ in
        let _endpos = _endpos__2_ in
        let _v : (FopixAST.t) = 
# 27 "flap/src/fopixParser.mly"
(
  ds
)
# 2431 "flap/src/fopixParser.ml"
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
        let _v : (FopixAST.t) = let _endpos = _endpos__1_ in
        let _startpos = _startpos__1_ in
        
# 30 "flap/src/fopixParser.mly"
        (
  let pos = Position.lex_join _startpos _endpos in
  Error.error "parsing" pos "Syntax error."
)
# 2461 "flap/src/fopixParser.ml"
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
# 11 "flap/src/fopixParser.mly"
      (string)
# 2482 "flap/src/fopixParser.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (FopixAST.formals) = let x = 
# 154 "flap/src/fopixParser.mly"
                         (
  Id x
)
# 2492 "flap/src/fopixParser.ml"
         in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 2497 "flap/src/fopixParser.ml"
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
        let xs : (FopixAST.formals) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x : (
# 11 "flap/src/fopixParser.mly"
      (string)
# 2532 "flap/src/fopixParser.ml"
        ) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (FopixAST.formals) = let x = 
# 154 "flap/src/fopixParser.mly"
                         (
  Id x
)
# 2542 "flap/src/fopixParser.ml"
         in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 2547 "flap/src/fopixParser.ml"
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
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (FopixAST.expression list) = let x = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 2574 "flap/src/fopixParser.ml"
         in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 2579 "flap/src/fopixParser.ml"
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
        let xs : (FopixAST.expression list) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x : (FopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (FopixAST.expression list) = let x = 
# 162 "flap/src/fopixParser.mly"
                        (
  x
)
# 2620 "flap/src/fopixParser.ml"
         in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 2625 "flap/src/fopixParser.ml"
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
        let x : (FopixAST.expression option) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (FopixAST.expression option list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2650 "flap/src/fopixParser.ml"
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
        let xs : (FopixAST.expression option list) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x : (FopixAST.expression option) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (FopixAST.expression option list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2689 "flap/src/fopixParser.ml"
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
    (Obj.magic (MenhirInterpreter.entry `Legacy 0 lexer lexbuf) : (FopixAST.t))

module Incremental = struct
  
  let program =
    fun initial_position ->
      (Obj.magic (MenhirInterpreter.start 0 initial_position) : (FopixAST.t) MenhirInterpreter.checkpoint)
  
end

# 269 "<standard.mly>"
  

# 2730 "flap/src/fopixParser.ml"
