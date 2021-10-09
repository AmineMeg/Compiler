
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20210419

module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WILDCARD
    | TYPE
    | TVAR of (
# 11 "src/hopixParser.mly"
       (string)
# 18 "src/hopixParser.ml"
  )
    | TRUE
    | THEN
    | SUP
    | STRING of (
# 11 "src/hopixParser.mly"
       (string)
# 26 "src/hopixParser.ml"
  )
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
    | INT of (
# 10 "src/hopixParser.mly"
       (Mint.t)
# 43 "src/hopixParser.ml"
  )
    | INF
    | IF
    | ID of (
# 11 "src/hopixParser.mly"
       (string)
# 50 "src/hopixParser.ml"
  )
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
    | CID of (
# 11 "src/hopixParser.mly"
       (string)
# 65 "src/hopixParser.ml"
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



# 84 "src/hopixParser.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | AND ->
          35
      | CID _ ->
          34
      | COLONLINE ->
          33
      | COMMA ->
          32
      | DIV ->
          31
      | DOT ->
          30
      | ELSE ->
          29
      | EOF ->
          28
      | EQUALS ->
          27
      | EXTERN ->
          26
      | FALSE ->
          25
      | FUN ->
          24
      | ID _ ->
          23
      | IF ->
          22
      | INF ->
          21
      | INT _ ->
          20
      | LBRACK ->
          19
      | LET ->
          18
      | LPAR ->
          17
      | LSQR ->
          16
      | MINUS ->
          15
      | MULT ->
          14
      | PIPE ->
          13
      | PLUS ->
          12
      | RARROW ->
          11
      | RBRACK ->
          10
      | RPAR ->
          9
      | RSQR ->
          8
      | STRING _ ->
          7
      | SUP ->
          6
      | THEN ->
          5
      | TRUE ->
          4
      | TVAR _ ->
          3
      | TYPE ->
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
      | DOT ->
          Obj.repr ()
      | ELSE ->
          Obj.repr ()
      | EOF ->
          Obj.repr ()
      | EQUALS ->
          Obj.repr ()
      | EXTERN ->
          Obj.repr ()
      | FALSE ->
          Obj.repr ()
      | FUN ->
          Obj.repr ()
      | ID _v ->
          Obj.repr _v
      | IF ->
          Obj.repr ()
      | INF ->
          Obj.repr ()
      | INT _v ->
          Obj.repr _v
      | LBRACK ->
          Obj.repr ()
      | LET ->
          Obj.repr ()
      | LPAR ->
          Obj.repr ()
      | LSQR ->
          Obj.repr ()
      | MINUS ->
          Obj.repr ()
      | MULT ->
          Obj.repr ()
      | PIPE ->
          Obj.repr ()
      | PLUS ->
          Obj.repr ()
      | RARROW ->
          Obj.repr ()
      | RBRACK ->
          Obj.repr ()
      | RPAR ->
          Obj.repr ()
      | RSQR ->
          Obj.repr ()
      | STRING _v ->
          Obj.repr _v
      | SUP ->
          Obj.repr ()
      | THEN ->
          Obj.repr ()
      | TRUE ->
          Obj.repr ()
      | TVAR _v ->
          Obj.repr _v
      | TYPE ->
          Obj.repr ()
      | WILDCARD ->
          Obj.repr ()
  
  and default_reduction =
    (8, "\000\000K\000\000L\000\000>\000\024\000\000,\000\016\000\026\000\000J\000\000\000\000\000\000<\000\022H\000\000@\003\000\002(E\000\000\000\030\000\000DF\000\015\000\000\000\000*\000 0\000\000\000\000\020\000\000\000\000\000&\000.\t\000\000\019\000\006\000\007\000\000\000\000\000\000\n\000\000\000\"\000\028\000\0008\b\000\000\000\000B\000\012\000\000N\000\0002$\000\000\000\000\000\000:13\000\0006\000\000\000\004\005\001\0004\000\018")
  
  and error =
    (36, " \000 \168\000\000\000\016\000\000\000\000\000\000\000\000A\000\016\000\000\000\000\000\000\000\000\002\000\000\000\129\000\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\000\001\000 \0040\168 \000\000\000\000\000\000\001\000\000\000\000\000\000\000 \000\000\000\000\000\000\000\000\000\000\000A\000\000\016\000\000\000\000\000\002'\002K\136\016\000\001\000\000%\000\000\b\016\000\001\000\002'\002\011\136\016\000\001\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\000\b\000\000\001\000\000\000\000\000\000\000\000\000\000\002\000\002\n\130\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000F\n\128\016\000\001\000\000\004\000\000\000\000\000\000\000\002\000B\n\128\000\000\000\000 \000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\001\004\016\000\129\000\001\000\000\000\000\016\128\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\000\001\000\000\016\000 \016 \184\000\000\000\001\000\b\000[\000 \000\000\000\000\b@[\000 \000\000\016\000\000 \000\000\002F\130J\233\018\000\001\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\b\000[\000 \000\000\000\000\b\000[\000 \000\000\000\000$h$\174\144\000\000\000\000\004\b\000\002\000\128\005\176\002\000\b\000\006\000\128\005\176\002$h \174\144\000\000\016\000\000\000\000\000\002F\134J\233$h`\174\144\132\005\176\002\000\000\000\000\000\004\000\000\000\000\000\000\000\000\004\128\000(\b\000[\000 \000\000\000\000\000\000\000\000\000\128\005\176\002$h \174\144\002\128\000(\000\000\001\000\000\000\000\000\000\000@\000\000\000\000\000\000\000 \b \170\000\000\000\016\000\000\000\000\000\000\000\004\000\000@@\001\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\016\000\128\005\176\002 \b \170\016\004\000\000\b@\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000 \168\016\000\000\016\000\000\000\000\000\000\000\000\016\000\000\000\000\000A\000\b\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\128\000\000\000\000\002\000\002\n\128\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\000\148\000-\000\000\000\021\000\002\000\000\000P\000\002\000\000\000V\000\000\0002\0016\000\000\000t\000\000\000\146\000\000\000x\000^\000\000\000\232\000^\000\006\000^\001\030\000^\000\000\000\186\000\000\000\000\000@\000t\000\000\000\000\000Z\000\000\000\000\000\000\001\132\000^\000\192\000\000\001\174\000Z\000\000\000\000\000\132\000\000\000*\000$\000\002\000\196\000\000\000\200\000\000\000\000\000^\000\210\000\166\001P\000\000\001P\000t\000\204\000\005\000\196\000\000\000\236\000\000\000\000\000\202\001P\000\000\001P\000\000\000\005\000\000\000\002\001P\000`\001P\000p\000t\000\000\000\005\0006\001P\000\000\000\242\000\000\000\015\001P\000\000\000\000\001P\000\170\000\016\000t\000\000\000\252\000\000\001\146\000\132\000\000\000\238\000\132\000\000\000\000\001\002\000\224\001P\001h\000\174\000\132\000\000\000\000\000\000\001\168\000\132\000\000\000\132\000\216\000$\000\000\000\000\000\000\000\236\000\000\000\148\000\000"), (16, "\000\177\000\n\000\217\000\177\000\022\001F\001>\000\177\000\177\000\233\000\177\000\018\000\233\001F\000b\000\177\000\177\000Y\001\001\001\n\001F\000y\000\177\001N\000\177\001r\000\177\000\177\000\177\000i\000\177\001N\000i\000\177\000\206\000j\000i\000i\001N\000i\001\138\000y\000\249\000b\001^\000i\000\241\000\153\000\185\000*\000\022\000i\0002\000i\000\202\000i\000i\000i\000)\000i\001F\000)\000i\000\153\000\130\000)\000)\001\174\001F\000\153\000\n\000\153\000\030\000\153\000)\000\137\000\006\001~\001N\000\146\000)\000>\000)\000F\000)\000)\001N\0001\000)\000\194\0001\000)\000\190\000N\0001\0001\000\225\001F\001\158\000v\001\230\000\022\000A\0001\000\145\000\170\000\161\001\025\000\222\0001\000\242\0001\001\006\0001\0001\001N\000b\0001\000Q\001\202\0001\000\n\000Q\001\025\001\022\000Q\000Q\000Q\001\"\001\025\001j\001\025\001\025\001\025\000Q\001\150\001\170\000Z\001\186\001\190\000Q\001\238\000Q\000Q\000Q\001!\002\003\000\000\000Q\001!\000\000\000\000\001!\001!\000b\000\000\000\000\000\169\000\000\000\000\000\000\001!\000\000\000\000\000\000\000\000\000\000\001!\0006\001!\001!\001!\000\246\000\169\000:\001!\000\000\000\129\000\000\000\169\000\000\000\169\0005\000\169\000\000\000\250\000\000\000\254\001&\000\169\001*\000\194\001F\000\000\000\000\000\000\000q\000\000\0005\000\000\000\000\000\000\000\146\0011\0005\000\000\0005\000q\0005\000\000\001N\000\162\000q\001F\000\209\0005\000\000\001\t\000q\0011\000q\000\000\000q\000\000\000\000\0011\000\000\0011\000\178\0011\000\209\001N\000\000\001\t\000\000\000\000\000\209\000\000\000\209\001\t\000\209\001\t\000\000\001\t\000\000\000\000\000\000\001\222"))
  
  and lhs =
    (8, "\000'&&&%%%%%%%%$#\"!!  \031\031\030\030\029\029\028\028\027\027\026\026\025\025\024\024\023\023\022\022\021\021\020\020\019\019\018\018\017\017\016\015\014\014\r\r\012\012\011\011\n\n\t\t\b\b\007\007\006\006\005\004\004\004\003\002\001\001")
  
  and goto =
    ((8, "\004\022\000\031:\000\000\196\000\000\000\000\152\000\186\000\000\000\000\004\000$N\000\174\000X\000\000\000\000\000\190\000\000\170\000\000\000>b\000\000\000\198\000\000:\000n\208\000\018\000\000\000\000\182\000\000,\000\027\020\000\182\n\000\000\000\000\000<\000>\000\188\000\000N\000P\000\160\000\192\176\025\000\000\000\000\007\000\000`\000\000\206\000\000\000\000\166\000\000*\000\000\000\000b\000\000\172\000\000\000\000\174\000\164\000\214\000\000\000\000\000\196\000"), (8, "YY5~\021\022 \021\022\024^5eZ\004\012D\127ALL7MM\\\\VVEL6\007Mm\\\128Vnr\n\130\021\022\024Hv\021\022\024\031\029\021\022\024L\028uM,g*VLL2MMbOVVLL<MMQSVVLL#MMaqVV\021\022\026&\021\022;$it~\007y\017r\"/.'\t9Gd}NUW_{jw\000ujw(\000\000\019\000\019:\131\000:\000\000\130H("))
  
  and semantic_action =
    [|
      (fun _menhir_env ->
        let _menhir_stack = _menhir_env.MenhirLib.EngineTypes.stack in
        let {
          MenhirLib.EngineTypes.state = _menhir_s;
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (
# 11 "src/hopixParser.mly"
       (string)
# 273 "src/hopixParser.ml"
        ) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (HopixAST.constructor) = 
# 141 "src/hopixParser.mly"
          ( KId c )
# 281 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = s;
          MenhirLib.EngineTypes.startp = _startpos_s_;
          MenhirLib.EngineTypes.endp = _endpos_s_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _4;
            MenhirLib.EngineTypes.startp = _startpos__4_;
            MenhirLib.EngineTypes.endp = _endpos__4_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = l;
              MenhirLib.EngineTypes.startp = _startpos_l_;
              MenhirLib.EngineTypes.endp = _endpos_l_;
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
        } = _menhir_stack in
        let s : (HopixAST.type_definition) = Obj.magic s in
        let _4 : unit = Obj.magic _4 in
        let l : (HopixAST.type_variable Position.located list) = Obj.magic l in
        let x : (HopixAST.type_constructor) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_s_ in
        let _v : (HopixAST.definition) = let t =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 339 "src/hopixParser.ml"
          
        in
        
# 35 "src/hopixParser.mly"
    (
      DefineType (t, l, s)
    )
# 347 "src/hopixParser.ml"
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
        let x_inlined1 : (HopixAST.type_scheme) = Obj.magic x_inlined1 in
        let _3 : unit = Obj.magic _3 in
        let x : (HopixAST.identifier) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (HopixAST.definition) = let ts =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 399 "src/hopixParser.ml"
          
        in
        let id =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 410 "src/hopixParser.ml"
          
        in
        
# 39 "src/hopixParser.mly"
    ( DeclareExtern (id,ts) )
# 416 "src/hopixParser.ml"
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
# 40 "src/hopixParser.mly"
             ( DefineValue v )
# 441 "src/hopixParser.ml"
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
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 471 "src/hopixParser.ml"
          
        in
        
# 95 "src/hopixParser.mly"
                         ( Literal l )
# 477 "src/hopixParser.ml"
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
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let l : (HopixAST.ty Position.located list option) = Obj.magic l in
        let x : (HopixAST.identifier) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_l_ in
        let _v : (HopixAST.expression) = let id =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 514 "src/hopixParser.ml"
          
        in
        
# 97 "src/hopixParser.mly"
      ( Variable(id, l) )
# 520 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = l2;
          MenhirLib.EngineTypes.startp = _startpos_l2_;
          MenhirLib.EngineTypes.endp = _endpos_l2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = l1;
            MenhirLib.EngineTypes.startp = _startpos_l1_;
            MenhirLib.EngineTypes.endp = _endpos_l1_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _menhir_s;
              MenhirLib.EngineTypes.semv = x;
              MenhirLib.EngineTypes.startp = _startpos_x_;
              MenhirLib.EngineTypes.endp = _endpos_x_;
              MenhirLib.EngineTypes.next = _menhir_stack;
            };
          };
        } = _menhir_stack in
        let l2 : (HopixAST.expression Position.located list) = Obj.magic l2 in
        let l1 : (HopixAST.ty Position.located list option) = Obj.magic l1 in
        let x : (HopixAST.constructor) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_l2_ in
        let _v : (HopixAST.expression) = let c =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 564 "src/hopixParser.ml"
          
        in
        
# 101 "src/hopixParser.mly"
      ( Tagged (c, l1, l2) )
# 570 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = l2;
          MenhirLib.EngineTypes.startp = _startpos_l2_;
          MenhirLib.EngineTypes.endp = _endpos_l2_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = _3;
            MenhirLib.EngineTypes.startp = _startpos__3_;
            MenhirLib.EngineTypes.endp = _endpos__3_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = l1;
              MenhirLib.EngineTypes.startp = _startpos_l1_;
              MenhirLib.EngineTypes.endp = _endpos_l1_;
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
        let l2 : (HopixAST.ty Position.located list option) = Obj.magic l2 in
        let _3 : unit = Obj.magic _3 in
        let l1 : ((HopixAST.label Position.located * HopixAST.expression Position.located)
  list) = Obj.magic l1 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_l2_ in
        let _v : (HopixAST.expression) = 
# 104 "src/hopixParser.mly"
      ( Record( l1, l2) )
# 617 "src/hopixParser.ml"
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
        let x_inlined1 : (HopixAST.label) = Obj.magic x_inlined1 in
        let _2 : unit = Obj.magic _2 in
        let x : (HopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (HopixAST.expression) = let l =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 662 "src/hopixParser.ml"
          
        in
        let e =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 673 "src/hopixParser.ml"
          
        in
        
# 106 "src/hopixParser.mly"
      ( Field (e, l) )
# 679 "src/hopixParser.ml"
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
        let x_inlined1 : (HopixAST.expression) = Obj.magic x_inlined1 in
        let _2 : unit = Obj.magic _2 in
        let x : (HopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (HopixAST.expression) = let e2 =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 724 "src/hopixParser.ml"
          
        in
        let e1 =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 735 "src/hopixParser.ml"
          
        in
        
# 108 "src/hopixParser.mly"
      ( Apply (e1, e2) )
# 741 "src/hopixParser.ml"
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
            MenhirLib.EngineTypes.semv = xs;
            MenhirLib.EngineTypes.startp = _startpos_xs_;
            MenhirLib.EngineTypes.endp = _endpos_xs_;
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
        let xs : (HopixAST.expression Position.located list) = Obj.magic xs in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (HopixAST.expression) = let l = 
# 232 "<standard.mly>"
    ( xs )
# 780 "src/hopixParser.ml"
         in
        
# 110 "src/hopixParser.mly"
      (
        Tuple (l)
      )
# 787 "src/hopixParser.ml"
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
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 853 "src/hopixParser.ml"
          
        in
        let e2 =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 865 "src/hopixParser.ml"
          
        in
        let e1 =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 876 "src/hopixParser.ml"
          
        in
        
# 116 "src/hopixParser.mly"
      (
        IfThenElse (e1, e2, e3)
      )
# 884 "src/hopixParser.ml"
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
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 950 "src/hopixParser.ml"
          
        in
        let p =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 962 "src/hopixParser.ml"
          
        in
        let id =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 973 "src/hopixParser.ml"
          
        in
        
# 70 "src/hopixParser.mly"
      (
        (id, None, FunctionDefinition(p, e))
      )
# 981 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = id;
          MenhirLib.EngineTypes.startp = _startpos_id_;
          MenhirLib.EngineTypes.endp = _endpos_id_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let id : (
# 11 "src/hopixParser.mly"
       (string)
# 1002 "src/hopixParser.ml"
        ) = Obj.magic id in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos_id_ in
        let _v : (HopixAST.identifier) = 
# 138 "src/hopixParser.mly"
          ( Id id )
# 1010 "src/hopixParser.ml"
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
        let l : (
# 11 "src/hopixParser.mly"
       (string)
# 1031 "src/hopixParser.ml"
        ) = Obj.magic l in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_l_ in
        let _endpos = _endpos_l_ in
        let _v : (HopixAST.label) = 
# 150 "src/hopixParser.mly"
         ( LId l )
# 1039 "src/hopixParser.ml"
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
# 1057 "src/hopixParser.ml"
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
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1094 "src/hopixParser.ml"
          
        in
        
# 213 "<standard.mly>"
    ( x :: xs )
# 1100 "src/hopixParser.ml"
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
# 1121 "src/hopixParser.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (HopixAST.literal) = 
# 134 "src/hopixParser.mly"
              ( LInt i )
# 1129 "src/hopixParser.ml"
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
# 135 "src/hopixParser.mly"
          ( LBool true )
# 1154 "src/hopixParser.ml"
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
        let _v : (HopixAST.ty Position.located list) = 
# 142 "<standard.mly>"
    ( [] )
# 1172 "src/hopixParser.ml"
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
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let x : (HopixAST.ty Position.located list) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (HopixAST.ty Position.located list) = let x = 
# 200 "<standard.mly>"
    ( x )
# 1211 "src/hopixParser.ml"
         in
        
# 144 "<standard.mly>"
    ( x )
# 1216 "src/hopixParser.ml"
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
        let _v : (HopixAST.type_variable Position.located list) = 
# 142 "<standard.mly>"
    ( [] )
# 1234 "src/hopixParser.ml"
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
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let x : (HopixAST.type_variable Position.located list) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (HopixAST.type_variable Position.located list) = let x = 
# 200 "<standard.mly>"
    ( x )
# 1273 "src/hopixParser.ml"
         in
        
# 144 "<standard.mly>"
    ( x )
# 1278 "src/hopixParser.ml"
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
        let _v : ((HopixAST.label Position.located * HopixAST.ty Position.located) list) = 
# 142 "<standard.mly>"
    ( [] )
# 1296 "src/hopixParser.ml"
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
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let x : ((HopixAST.label Position.located * HopixAST.ty Position.located) list) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : ((HopixAST.label Position.located * HopixAST.ty Position.located) list) = let x = 
# 200 "<standard.mly>"
    ( x )
# 1335 "src/hopixParser.ml"
         in
        
# 144 "<standard.mly>"
    ( x )
# 1340 "src/hopixParser.ml"
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
        let _v : (HopixAST.expression Position.located list) = 
# 142 "<standard.mly>"
    ( [] )
# 1358 "src/hopixParser.ml"
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
            MenhirLib.EngineTypes.semv = xs;
            MenhirLib.EngineTypes.startp = _startpos_xs_;
            MenhirLib.EngineTypes.endp = _endpos_xs_;
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
        let xs : (HopixAST.expression Position.located list) = Obj.magic xs in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (HopixAST.expression Position.located list) = let x =
          let x = 
# 232 "<standard.mly>"
    ( xs )
# 1398 "src/hopixParser.ml"
           in
          
# 200 "<standard.mly>"
    ( x )
# 1403 "src/hopixParser.ml"
          
        in
        
# 144 "<standard.mly>"
    ( x )
# 1409 "src/hopixParser.ml"
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
        let _v : (HopixAST.ty Position.located list) = 
# 142 "<standard.mly>"
    ( [] )
# 1427 "src/hopixParser.ml"
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
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let x : (HopixAST.ty Position.located list) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (HopixAST.ty Position.located list) = let x = 
# 200 "<standard.mly>"
    ( x )
# 1466 "src/hopixParser.ml"
         in
        
# 144 "<standard.mly>"
    ( x )
# 1471 "src/hopixParser.ml"
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
        let _v : (HopixAST.type_variable Position.located list) = 
# 142 "<standard.mly>"
    ( [] )
# 1489 "src/hopixParser.ml"
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
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let x : (HopixAST.type_variable Position.located list) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (HopixAST.type_variable Position.located list) = let x = 
# 200 "<standard.mly>"
    ( x )
# 1528 "src/hopixParser.ml"
         in
        
# 144 "<standard.mly>"
    ( x )
# 1533 "src/hopixParser.ml"
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
        let _v : (HopixAST.expression Position.located list) = 
# 142 "<standard.mly>"
    ( [] )
# 1551 "src/hopixParser.ml"
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
        let x : (HopixAST.expression Position.located list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (HopixAST.expression Position.located list) = 
# 144 "<standard.mly>"
    ( x )
# 1576 "src/hopixParser.ml"
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
        let _v : (HopixAST.pattern Position.located list) = 
# 142 "<standard.mly>"
    ( [] )
# 1594 "src/hopixParser.ml"
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
        let x : (HopixAST.pattern Position.located list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (HopixAST.pattern Position.located list) = 
# 144 "<standard.mly>"
    ( x )
# 1619 "src/hopixParser.ml"
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
        let _v : (HopixAST.ty Position.located list) = 
# 142 "<standard.mly>"
    ( [] )
# 1637 "src/hopixParser.ml"
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
        let x : (HopixAST.ty Position.located list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (HopixAST.ty Position.located list) = 
# 144 "<standard.mly>"
    ( x )
# 1662 "src/hopixParser.ml"
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
        let _v : ((HopixAST.constructor Position.located * HopixAST.ty Position.located list)
  list) = 
# 142 "<standard.mly>"
    ( [] )
# 1681 "src/hopixParser.ml"
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
        let x : ((HopixAST.constructor Position.located * HopixAST.ty Position.located list)
  list) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : ((HopixAST.constructor Position.located * HopixAST.ty Position.located list)
  list) = 
# 144 "<standard.mly>"
    ( x )
# 1708 "src/hopixParser.ml"
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
        let x : (HopixAST.type_variable) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (HopixAST.type_variable Position.located list) = let x =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1738 "src/hopixParser.ml"
          
        in
        
# 221 "<standard.mly>"
    ( [ x ] )
# 1744 "src/hopixParser.ml"
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
        let xs : (HopixAST.type_variable Position.located list) = Obj.magic xs in
        let x : (HopixAST.type_variable) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (HopixAST.type_variable Position.located list) = let x =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1781 "src/hopixParser.ml"
          
        in
        
# 223 "<standard.mly>"
    ( x :: xs )
# 1787 "src/hopixParser.ml"
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
        let _v : (unit option) = 
# 114 "<standard.mly>"
    ( None )
# 1805 "src/hopixParser.ml"
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
        let x : unit = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (unit option) = 
# 116 "<standard.mly>"
    ( Some x )
# 1830 "src/hopixParser.ml"
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
        let _v : (HopixAST.ty Position.located list option) = 
# 114 "<standard.mly>"
    ( None )
# 1848 "src/hopixParser.ml"
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
            MenhirLib.EngineTypes.semv = xs;
            MenhirLib.EngineTypes.startp = _startpos_xs_;
            MenhirLib.EngineTypes.endp = _endpos_xs_;
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
        let xs : (HopixAST.ty Position.located list) = Obj.magic xs in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (HopixAST.ty Position.located list option) = let x =
          let x = 
# 232 "<standard.mly>"
    ( xs )
# 1888 "src/hopixParser.ml"
           in
          
# 200 "<standard.mly>"
    ( x )
# 1893 "src/hopixParser.ml"
          
        in
        
# 116 "<standard.mly>"
    ( Some x )
# 1899 "src/hopixParser.ml"
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
        let _v : (HopixAST.type_scheme Position.located option) = 
# 114 "<standard.mly>"
    ( None )
# 1917 "src/hopixParser.ml"
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
        let x : (HopixAST.type_scheme) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_x_ in
        let _v : (HopixAST.type_scheme Position.located option) = let x =
          let x =
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1955 "src/hopixParser.ml"
            
          in
          
# 183 "<standard.mly>"
    ( x )
# 1961 "src/hopixParser.ml"
          
        in
        
# 116 "<standard.mly>"
    ( Some x )
# 1967 "src/hopixParser.ml"
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
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1997 "src/hopixParser.ml"
          
        in
        
# 129 "src/hopixParser.mly"
                              ( PVariable(id) )
# 2003 "src/hopixParser.ml"
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
# 130 "src/hopixParser.mly"
                              ( PWildcard )
# 2028 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = xs;
          MenhirLib.EngineTypes.startp = _startpos_xs_;
          MenhirLib.EngineTypes.endp = _endpos_xs_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let xs : (HopixAST.pattern Position.located list) = Obj.magic xs in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_xs_ in
        let _endpos = _endpos_xs_ in
        let _v : (HopixAST.pattern) = let l = 
# 232 "<standard.mly>"
    ( xs )
# 2053 "src/hopixParser.ml"
         in
        
# 124 "src/hopixParser.mly"
    (
      PTuple(l)
    )
# 2060 "src/hopixParser.ml"
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
# 24 "src/hopixParser.mly"
(
  v
)
# 2094 "src/hopixParser.ml"
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
# 2119 "src/hopixParser.ml"
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
# 2158 "src/hopixParser.ml"
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
        let x : (HopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (HopixAST.expression Position.located list) = let x =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2188 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 2194 "src/hopixParser.ml"
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
        let xs : (HopixAST.expression Position.located list) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x : (HopixAST.expression) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (HopixAST.expression Position.located list) = let x =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2238 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 2244 "src/hopixParser.ml"
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
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2274 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 2280 "src/hopixParser.ml"
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
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2324 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 2330 "src/hopixParser.ml"
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
        let x : (HopixAST.ty) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (HopixAST.ty Position.located list) = let x =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2360 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 2366 "src/hopixParser.ml"
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
        let xs : (HopixAST.ty Position.located list) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x : (HopixAST.ty) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (HopixAST.ty Position.located list) = let x =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2410 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 2416 "src/hopixParser.ml"
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
        let x : (HopixAST.type_variable) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_ in
        let _v : (HopixAST.type_variable Position.located list) = let x =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2446 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 2452 "src/hopixParser.ml"
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
        let xs : (HopixAST.type_variable Position.located list) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x : (HopixAST.type_variable) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : (HopixAST.type_variable Position.located list) = let x =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2496 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 2502 "src/hopixParser.ml"
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
        let x_inlined1 : (HopixAST.ty) = Obj.magic x_inlined1 in
        let _2 : unit = Obj.magic _2 in
        let x : (HopixAST.label) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : ((HopixAST.label Position.located * HopixAST.ty Position.located) list) = let x =
          let y =
            let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2548 "src/hopixParser.ml"
            
          in
          let x =
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2559 "src/hopixParser.ml"
            
          in
          
# 175 "<standard.mly>"
    ( (x, y) )
# 2565 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 2571 "src/hopixParser.ml"
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
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = x_inlined1;
              MenhirLib.EngineTypes.startp = _startpos_x_inlined1_;
              MenhirLib.EngineTypes.endp = _endpos_x_inlined1_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _2_inlined1;
                MenhirLib.EngineTypes.startp = _startpos__2_inlined1_;
                MenhirLib.EngineTypes.endp = _endpos__2_inlined1_;
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
        } = _menhir_stack in
        let xs : ((HopixAST.label Position.located * HopixAST.ty Position.located) list) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x_inlined1 : (HopixAST.ty) = Obj.magic x_inlined1 in
        let _2_inlined1 : unit = Obj.magic _2_inlined1 in
        let x : (HopixAST.label) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : ((HopixAST.label Position.located * HopixAST.ty Position.located) list) = let x =
          let y =
            let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2631 "src/hopixParser.ml"
            
          in
          let x =
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2642 "src/hopixParser.ml"
            
          in
          
# 175 "<standard.mly>"
    ( (x, y) )
# 2648 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 2654 "src/hopixParser.ml"
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
        let x_inlined1 : (HopixAST.expression) = Obj.magic x_inlined1 in
        let _2 : unit = Obj.magic _2 in
        let x : (HopixAST.label) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : ((HopixAST.label Position.located * HopixAST.expression Position.located)
  list) = let x =
          let y =
            let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2701 "src/hopixParser.ml"
            
          in
          let x =
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2712 "src/hopixParser.ml"
            
          in
          
# 175 "<standard.mly>"
    ( (x, y) )
# 2718 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 2724 "src/hopixParser.ml"
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
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = x_inlined1;
              MenhirLib.EngineTypes.startp = _startpos_x_inlined1_;
              MenhirLib.EngineTypes.endp = _endpos_x_inlined1_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _2_inlined1;
                MenhirLib.EngineTypes.startp = _startpos__2_inlined1_;
                MenhirLib.EngineTypes.endp = _endpos__2_inlined1_;
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
        } = _menhir_stack in
        let xs : ((HopixAST.label Position.located * HopixAST.expression Position.located)
  list) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let x_inlined1 : (HopixAST.expression) = Obj.magic x_inlined1 in
        let _2_inlined1 : unit = Obj.magic _2_inlined1 in
        let x : (HopixAST.label) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : ((HopixAST.label Position.located * HopixAST.expression Position.located)
  list) = let x =
          let y =
            let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2786 "src/hopixParser.ml"
            
          in
          let x =
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2797 "src/hopixParser.ml"
            
          in
          
# 175 "<standard.mly>"
    ( (x, y) )
# 2803 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 2809 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = y;
          MenhirLib.EngineTypes.startp = _startpos_y_;
          MenhirLib.EngineTypes.endp = _endpos_y_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _menhir_s;
            MenhirLib.EngineTypes.semv = x;
            MenhirLib.EngineTypes.startp = _startpos_x_;
            MenhirLib.EngineTypes.endp = _endpos_x_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let y : (HopixAST.ty Position.located list) = Obj.magic y in
        let x : (HopixAST.constructor) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_y_ in
        let _v : ((HopixAST.constructor Position.located * HopixAST.ty Position.located list)
  list) = let x =
          let x =
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2848 "src/hopixParser.ml"
            
          in
          
# 167 "<standard.mly>"
    ( (x, y) )
# 2854 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 2860 "src/hopixParser.ml"
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
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = y;
              MenhirLib.EngineTypes.startp = _startpos_y_;
              MenhirLib.EngineTypes.endp = _endpos_y_;
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
        let xs : ((HopixAST.constructor Position.located * HopixAST.ty Position.located list)
  list) = Obj.magic xs in
        let _2 : unit = Obj.magic _2 in
        let y : (HopixAST.ty Position.located list) = Obj.magic y in
        let x : (HopixAST.constructor) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_xs_ in
        let _v : ((HopixAST.constructor Position.located * HopixAST.ty Position.located list)
  list) = let x =
          let x =
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2914 "src/hopixParser.ml"
            
          in
          
# 167 "<standard.mly>"
    ( (x, y) )
# 2920 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 2926 "src/hopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _1;
            MenhirLib.EngineTypes.startp = _startpos__1_;
            MenhirLib.EngineTypes.endp = _endpos__1_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let xs : ((HopixAST.constructor Position.located * HopixAST.ty Position.located list)
  list) = Obj.magic xs in
        let _1 : (unit option) = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_xs_ in
        let _v : (HopixAST.type_definition) = let l = 
# 232 "<standard.mly>"
    ( xs )
# 2959 "src/hopixParser.ml"
         in
        
# 47 "src/hopixParser.mly"
    ( 
      DefineSumType (l) 
    )
# 2966 "src/hopixParser.ml"
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
        let l : ((HopixAST.label Position.located * HopixAST.ty Position.located) list) = Obj.magic l in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_l_ in
        let _endpos = _endpos_l_ in
        let _v : (HopixAST.type_definition) = 
# 54 "src/hopixParser.mly"
    ( DefineRecordType (l) )
# 2991 "src/hopixParser.ml"
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
            MenhirLib.EngineTypes.semv = l;
            MenhirLib.EngineTypes.startp = _startpos_l_;
            MenhirLib.EngineTypes.endp = _endpos_l_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let x : (HopixAST.ty) = Obj.magic x in
        let l : (HopixAST.type_variable Position.located list) = Obj.magic l in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_l_ in
        let _endpos = _endpos_x_ in
        let _v : (HopixAST.type_scheme) = let t =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3028 "src/hopixParser.ml"
          
        in
        
# 91 "src/hopixParser.mly"
    (  ForallTy (l,t) )
# 3034 "src/hopixParser.ml"
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
            MenhirLib.EngineTypes.semv = t;
            MenhirLib.EngineTypes.startp = _startpos_t_;
            MenhirLib.EngineTypes.endp = _endpos_t_;
            MenhirLib.EngineTypes.next = _menhir_stack;
          };
        } = _menhir_stack in
        let l : (HopixAST.ty Position.located list) = Obj.magic l in
        let t : (HopixAST.type_constructor) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos_l_ in
        let _v : (HopixAST.ty) = 
# 80 "src/hopixParser.mly"
    ( TyCon(t, l) )
# 3066 "src/hopixParser.ml"
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
        let x_inlined1 : (HopixAST.ty) = Obj.magic x_inlined1 in
        let _2 : unit = Obj.magic _2 in
        let x : (HopixAST.ty) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (HopixAST.ty) = let t2 =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3111 "src/hopixParser.ml"
          
        in
        let t1 =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3122 "src/hopixParser.ml"
          
        in
        
# 82 "src/hopixParser.mly"
    ( TyArrow (t1,t2) )
# 3128 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let t : (HopixAST.type_variable) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos_t_ in
        let _v : (HopixAST.ty) = 
# 86 "src/hopixParser.mly"
    ( TyVar t )
# 3153 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = t;
          MenhirLib.EngineTypes.startp = _startpos_t_;
          MenhirLib.EngineTypes.endp = _endpos_t_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let t : (
# 11 "src/hopixParser.mly"
       (string)
# 3174 "src/hopixParser.ml"
        ) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos_t_ in
        let _v : (HopixAST.type_constructor) = 
# 144 "src/hopixParser.mly"
         ( TCon t )
# 3182 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = v;
          MenhirLib.EngineTypes.startp = _startpos_v_;
          MenhirLib.EngineTypes.endp = _endpos_v_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let v : (
# 11 "src/hopixParser.mly"
       (string)
# 3203 "src/hopixParser.ml"
        ) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_v_ in
        let _v : (HopixAST.type_variable) = 
# 147 "src/hopixParser.mly"
           ( TId v )
# 3211 "src/hopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _4;
            MenhirLib.EngineTypes.startp = _startpos__4_;
            MenhirLib.EngineTypes.endp = _endpos__4_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = t;
              MenhirLib.EngineTypes.startp = _startpos_t_;
              MenhirLib.EngineTypes.endp = _endpos_t_;
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
        } = _menhir_stack in
        let x_inlined1 : (HopixAST.expression) = Obj.magic x_inlined1 in
        let _4 : unit = Obj.magic _4 in
        let t : (HopixAST.type_scheme Position.located option) = Obj.magic t in
        let x : (HopixAST.identifier) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos_x_inlined1_ in
        let _v : (HopixAST.value_definition) = let y =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3270 "src/hopixParser.ml"
          
        in
        let x =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 152 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3281 "src/hopixParser.ml"
          
        in
        
# 60 "src/hopixParser.mly"
    (
      SimpleValue (x, t, y)  (*UTILISER X? OU OPTION(X)  pour option*) 
    )
# 3289 "src/hopixParser.ml"
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
# 64 "src/hopixParser.mly"
    (
      RecFunctions(l)
    )
# 3323 "src/hopixParser.ml"
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
  

# 3364 "src/hopixParser.ml"
