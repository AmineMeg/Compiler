
(* This generated code requires the following version of MenhirLib: *)

let () =
  MenhirLib.StaticVersion.require_20210419

module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WILDCARD
    | WHILE
    | TYPE
    | TVAR of (
# 11 "src/hopixParser.mly"
       (string)
# 19 "src/hopixParser.ml"
  )
    | TRUE
    | TO
    | THEN
    | SUPIDOT
    | SUP
    | STRING of (
# 11 "src/hopixParser.mly"
       (string)
# 29 "src/hopixParser.ml"
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
# 46 "src/hopixParser.ml"
  )
    | INFIDOT
    | INF
    | IN
    | IF
    | IDOT
    | ID of (
# 11 "src/hopixParser.mly"
       (string)
# 56 "src/hopixParser.ml"
  )
    | FUN
    | FROM
    | FOR
    | FALSE
    | EXTERN
    | EQUALS
    | EOF
    | ELSE
    | EDOT
    | DOT
    | DIV
    | COMMA
    | COLONLINE
    | CID of (
# 11 "src/hopixParser.mly"
       (string)
# 74 "src/hopixParser.ml"
  )
    | CHAR of (
# 12 "src/hopixParser.mly"
       (char)
# 79 "src/hopixParser.ml"
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



# 98 "src/hopixParser.ml"

module Tables = struct
  
  include MenhirBasics
  
  let token2terminal : token -> int =
    fun _tok ->
      match _tok with
      | AND ->
          45
      | CHAR _ ->
          44
      | CID _ ->
          43
      | COLONLINE ->
          42
      | COMMA ->
          41
      | DIV ->
          40
      | DOT ->
          39
      | EDOT ->
          38
      | ELSE ->
          37
      | EOF ->
          36
      | EQUALS ->
          35
      | EXTERN ->
          34
      | FALSE ->
          33
      | FOR ->
          32
      | FROM ->
          31
      | FUN ->
          30
      | ID _ ->
          29
      | IDOT ->
          28
      | IF ->
          27
      | IN ->
          26
      | INF ->
          25
      | INFIDOT ->
          24
      | INT _ ->
          23
      | LBRACK ->
          22
      | LET ->
          21
      | LPAR ->
          20
      | LSQR ->
          19
      | MINUS ->
          18
      | MULT ->
          17
      | PIPE ->
          16
      | PLUS ->
          15
      | RARROW ->
          14
      | RBRACK ->
          13
      | RPAR ->
          12
      | RSQR ->
          11
      | STRING _ ->
          10
      | SUP ->
          9
      | SUPIDOT ->
          8
      | THEN ->
          7
      | TO ->
          6
      | TRUE ->
          5
      | TVAR _ ->
          4
      | TYPE ->
          3
      | WHILE ->
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
      | CHAR _v ->
          Obj.repr _v
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
      | EDOT ->
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
      | FOR ->
          Obj.repr ()
      | FROM ->
          Obj.repr ()
      | FUN ->
          Obj.repr ()
      | ID _v ->
          Obj.repr _v
      | IDOT ->
          Obj.repr ()
      | IF ->
          Obj.repr ()
      | IN ->
          Obj.repr ()
      | INF ->
          Obj.repr ()
      | INFIDOT ->
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
      | SUPIDOT ->
          Obj.repr ()
      | THEN ->
          Obj.repr ()
      | TO ->
          Obj.repr ()
      | TRUE ->
          Obj.repr ()
      | TVAR _v ->
          Obj.repr _v
      | TYPE ->
          Obj.repr ()
      | WHILE ->
          Obj.repr ()
      | WILDCARD ->
          Obj.repr ()
  
  and default_reduction =
    (8, "\000\006\000N\000\000O\000\000@\000\028\000\000.\000\019\000\030\000\000M\000\000\000\000\000\000\000\000>\000\026J\000\000B\003\000\002*G\000\000\000\"\000\000FH\000\018\000\000\000\000,\000$2\000\000\000\000\000\000\000\000\024\000\000\000\000\000(\0000\n\000\000\022\000\000\000\000\000\002\023\007\000\b\000\000\000\000\000\000\000\000\016\000\000\000\011\000\000\000&\000 \000\000:\t\000\000\000\000\000\000\000D\000\r\000\000\000\000\015\000\000\000\000\015\024\000\000\r\000\000\000\000\0000\n\022\000\000\000\000\000\018\000\000\000\000\000\000\000\000\000\000\000\000\016\023\007\000\b\000\000\000\000\019\011\000\000\000\000 \t\000\000Q\0004\000\0005\000\000<3\000\000\000\000\0008\000\000\000\004\000ONM\000\000\000\026J\000\000\000\000\000\005\001\0006\000\021")
  
  and error =
    (46, "\144\000\004\002(\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000@\016\000 \000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\016\b\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\002@\002\024\b\160@\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\b\000\000\004\000\000\000\000\000\000\000\000\004\228\004\001\004\002\000\000\001\000\000\000J@\000\000@ \000\000\016\000\000\004\228\000\001\004\002\000\000\001\000\000\000N@\000\016@ \000\000\016\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000d\000\000\004\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\t\000\000@\"\129\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\t\000\b\192\"\128\002\000\000\001\000\000\000\b\000\000\000\000\000\000\000\000\000\t\000\b@\"\128\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\016  \000@\016\000\000\128\000\000\000\000\002\004\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\004\000\000\000\t\000\000@\000\000\000\000\001\000\b\b\002\197 \006\000\000\b\000\000\000\128\128,R\000`\000\000\128\000\000\b\b\002\197 \006\000\000\000\000\000\000\128\160,R\000`\000\000\000@\000\000\001\000\000\000\000\001\r\000@\005@!\000\000\016\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\b\b\002\197 \006\000\000\000\000\000\000\128\128,R\000`\000\000\000@\000\000\000\000\000@\000\000\000\b\000\000\000\128\128,R\000`\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0044\001\000\021\000\000\000\000\000\000\000\002@\000\000@\002\000\000\000\000\000\000\000 \000\000\002\002\000\177H\001\128\002@\000\000@\000\000\002\000\000\000\128\128,R\000`\000P\000\000\016\000\000\000\000\000\000  \011\020\128\024\0044\000\000\021\000\000\000\000@\000\000\000\000\000\000\000\001\r\b@\005@\0044 \000\021\002\002\128\177H\001\128\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\144\000\000\020\b\b\002\197 \006\000\000\000\000\000\000\000\000\000\000\000\000\016\016\000\000\016\b\b\002\197 \006\000\001\000\000\005\000\128\128,R\000`\016\208\000\000T\000\001@\000\000P\000\000\000\004\000\000\000\000\000\000\000\000\000\128\000\000\000\000\000\000\000\000\000\000\t\000\000\001\000\000\000\b\000\000\002\002\000\177H\001\128\001@\000\000@\000\000\000\000\000\000\000$\000\000\004\000\000\000 \000\000\b\b\002\197 \006\000\005\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\b\n\002\197 \006\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\001\000\000\000\000\144\001\004B)\004!\000\000\016\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\002\000\177H\001\128@@\000\000@  \011\020\128\024\000\004\000\000\020\002\002\000\177H\001\128\000\000\000\000\000\000\000\000\004\000\000\000\000\000\004\000\000\000\000\128\000\000\b\b\002\197 \006\000\t\000\000\001\000\b\000\000\000\000\000\000\000\128\000\000\b\b\002\197 \006\000\t\000\000\001\000\000\000\b\000\000\002\002\000\177H\001\128\001@\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000$\000A\016\138A\000\000\000\000\000\002@\004\016\b\164\018\002\000\177H\001\164\000A\000\138A\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000$\000C\016\138A\144\001\012\002)\004\128\160,R\000`\000\128\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002@\004\016\b\164\000\000\000\000@\000\000\000\000\000\000\000@\000\b\004\000\000\000\000\000\000\000\004\000\000\128@\000\000\002\000\000\000\000\000\000\000\000\000\000\000 \000\000\001\004\000\000\128@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\002\002\000\177H\001\164\000A\000\138A\144\000\004\002(\004\000\000\000\016\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000  \000@\016\000\000\000\000\000\000\000\002\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000$\000\145\016\138\000\b\000\000\004\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\144\002D\002(\000 \000\000\016\000\t\000$@\"\128\002\000\000\001\000\000\144\002D\002(\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\002@\000\016\b\160\000\000\000\000\000\000\000")
  
  and start =
    1
  
  and action =
    ((16, "\002D\000\000\0005\000\000\000(\0002\000\000\000.\0002\000\000\000\130\000\000\000R\000\138\000\000\000\136\000\000\000\186\000\000\000\138\000t\000\000\001\016\000t\002<\000t\001\192\000t\001\216\000t\000\000\000\222\000\000\000\000\000\005\000\136\000\000\000\000\001\196\000\000\000\000\000\000\0014\000t\000\218\000\000\002\004\000D\000\000\000\000\000\005\000\000\000%\000\138\0002\001j\000\000\001\006\000\000\000\000\000t\000\025\000\248\000D\0018\000\005\001d\000\005\000\000\000\005\000\136\001t\000\r\000t\000\000\001~\000\000\000\000\001N\000\005\000\000\000\005\000\005\001Z\001\128\000\005\000\000\000\000\000\000\000\r\000\000\000H\001\166\001\148\000\005\000\226\001\150\000\005\000\208\000\000\000\005\002\b\000\136\000\000\000\r\001L\000\005\000\000\001\182\000\000\000\190\000\005\000\000\000\000\000j\000\005\000X\000\005\002\026\000\252\000\136\000\000\001\188\000\000\001:\001\188\000\005\000\226\000\000\001\206\001\202\000\005\001\030\000\000\000\000\000\005\001\230\000\000\000\136\001\232\000\002\000t\001\252\000\000\000\000\000\000\000\005\000\190\000\005\000\252\000D\000\000\000\005\001\210\001\236\000\005\002D\002 \002\b\000\005\002R\002\014\000\005\001\\\000\000\000\000\000\000\000\002\000\000\000\158\000D\000\186\002\b\000\000\000\000\000\026\000d\000\005\002.\000\000\000\000\001h\000\005\000\000\002\022\000\000\002\022\002N\000\000\001,\002\022\000\000\000\000\002.\000D\000\202\0026\000\005\000\000\000\005\002\"\000\138\000\000\001H\000\000\000\000\000\000\001\004\000t\002f\000\000\000\000\001\132\001H\001\156\001H\001\180\000\000\000\000\0024\000\000\002D\000\000"), (16, "\001\n\000\185\000f\000\014\000\185\000n\000\185\000\185\001\018\000\185\000\145\001\001\000f\000\185\000\185\000n\000\185\000\193\001\022\001&\001\026\001B\000\185\001!\000\214\001F\0026\000\206\000\185\000\026\001J\000\185\000\249\000\185\000\185\000\185\001\002\000\185\0026\000\142\000\185\001Z\001^\000\185\002\026\000\022\000\185\000\185\001r\000\185\000y\001\146\000\185\000y\002\030\000i\002*\002F\000\185\001\146\001\206\002J\000\026\002^\000\"\000y\002b\000\153\001\146\000\177\002\198\000y\000\177\000\137\000.\001\154\0006\000\158\002\150\0005\000y\001\214\0005\001\154\000y\000:\000y\000\014\000\218\000y\000\177\000>\001\154\000-\002\170\000y\000-\000B\000\137\000\177\0005\000A\002R\000\177\000A\000\177\000J\000\225\002\170\0005\001\146\000R\000\177\0005\000-\0005\002\170\001\142\002\178\001\146\000\130\000\182\000A\000-\0005\001\130\002\002\000-\001\146\000-\000a\000A\002\178\000a\001\154\000A\001\190\000A\000-\001\t\002\178\001\146\000\234\001\154\000a\000a\000A\000a\000a\000a\000a\000a\001\154\000a\000\129\003B\002\022\000\129\001\146\000\254\000a\000^\000\233\002Z\000a\001\154\000a\001\226\0032\001\246\000\129\000a\001\146\000y\000\174\000\129\001\006\000a\000y\000y\001=\000y\001\154\001=\000\129\000\026\001\170\002\146\000\129\001\146\000\129\002\250\000\169\0036\001!\002\170\001\154\001!\001\014\001\"\0012\001=\001>\000y\001R\000y\001)\000y\003V\001)\001=\003^\001V\001\154\001=\001!\001=\001v\001-\002\178\003V\001-\001z\003^\001!\001\134\000\161\001)\001!\000\161\001!\001\182\003V\001)\001\238\003^\001)\001)\000f\001-\001)\000n\001)\002\n\001\250\001-\001\146\000\161\001-\001-\000f\002\014\001-\000n\001-\002&\000\161\0022\001\017\001)\000\161\001\017\000\161\002>\002j\001)\002n\000-\002\230\000\158\001\154\001-\000-\000-\000\190\001\146\0005\001-\002z\001\017\002~\0005\0005\000\217\001\146\002\138\000\217\002\234\001\017\002\182\000\006\002\206\001\017\000\n\001\017\000\241\000\206\000-\000\241\001\154\000f\000-\002v\000n\000\217\001\146\0005\002\242\001\154\002\134\0005\000\202\001\146\000\217\003\n\003&\003J\000\217\003s\000\217\002\218\000\000\000\000\000\000\003\030\000\000\000M\000v\003\022\001\154\000\000\000\000\000\000\000\000\000\000\000\000\001\154"))
  
  and lhs =
    (8, "\000%$$$$##########\"! \031\031\030\030\030\029\029\028\028\027\027\026\026\025\025\024\024\023\023\022\022\021\021\020\020\019\019\018\018\017\017\016\016\016\015\014\014\r\r\012\012\011\011\n\n\t\t\b\b\007\007\006\006\005\004\004\004\004\003\002\001\001")
  
  and goto =
    ((16, "\000>\000\000\000\003\000\000\000\031\000\136\000\000\000\000\000\160\000\000\000\000\000\000\000\000\000r\000\000\000*\000\000\000\000\000\000\000\000\000H\000\000\000\031\000\002\000\000\001\138\000\000\001\144\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000B\000\000\000\000\000f\000\000\000\000\000\000\000\019\000r\000\000\000\000\000\000\000\174\000\000\000\000\000\016\000\000\000\190\001\188\000\188\000\196\000\000\000\000\000\000\000\000\001\152\000\000\000\000\000H\000\000\000X\000\000\000d\000\000\000\027\000\188\000\000\000\204\000@\000\000\000\000\000\000\000\000\000\000\000p\000\000\000|\000\206\000\000\000\000\000\136\000\000\000\000\000\000\000\240\000\000\000\000\000\000\000\000\000\148\000\000\000\000\000\160\000\000\000\000\000\172\000\000\000\220\000\000\000\252\000\244\000\025\000\000\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\184\000\000\000\196\000\000\000\000\000\196\000\000\000\000\000\000\000\000\000\000\000\208\000\000\000\000\000\000\000\000\000\220\000\000\000\000\000\000\000\t\000\000\000\000\000\200\000\000\001\b\000j\000\000\000\000\000\000\000\000\000\232\000\000\000\244\000\000\001\000\000\000\000\242\000\000\000\000\001\012\000\000\000\000\000\000\001\024\000\000\000\000\001$\000\000\000\000\000\000\000\000\001\020\000\000\000\000\0010\000\000\001\000\000\000\000\000\001 \001\024\000\028\000\000\000\000\000\000\000\000\001`\000\000\001\168\000\000\001\142\000\000\000\000\000\000\001\144\000\000\000\000\000\000\001<\000\000\000\000\001h\000\000\001\014\000\000\001\192\000\000\001\174\000\000\000\000\000\000\001\030\001\132\000\000\000\000\000\000\000\000\001\180\000\000\001\186\000\000\000\000\000\000\000\000\000\000\001\194\000\000"), (8, "ll\005\022\023\025\022\023\025l{m \r\"\031/YY\137ZZooiiYlqZ\018o\218i\022\023\025\179\022\023#5%KYY\219ZZooii\020L\022\023\025)\022\023\025\220&K\020\167\222-\168\b\182*\176Y\143'Z\011\130Yi\bZ2}Yi+Z\nxYi1Z8sYi8ZH\\YizZ\140`Yi?Z:cYi9ZNfYi+ZOuYiOZOwYiTZ[\128YihZj\133YirZ\145\148Yi\154Z\169\150\167i\175\168\177\170Y\176\181Z\201\157Yi\212Z\000\161Yi\000Z\000\164\167i\000\168\000\172\167\176\184\168\000\196\199\176\022\023\025\022\023\027\022\023\029\210\022\023>\185\197\188\192\185\197\190\190\207\208\213\207\208\215\207\208\217\218<\194\203\000\000\193\193\000\000\000\000\000\000\000\000\000\000\000\193=\000\204\000\000\000\000\000\000\000\223\000\000\000\000\222"))
  
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
# 327 "src/hopixParser.ml"
        ) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (HopixAST.constructor) = 
# 162 "src/hopixParser.mly"
          ( KId c )
# 335 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 393 "src/hopixParser.ml"
          
        in
        
# 37 "src/hopixParser.mly"
    (
      DefineType (t, l, s)
    )
# 401 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 453 "src/hopixParser.ml"
          
        in
        let id =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 464 "src/hopixParser.ml"
          
        in
        
# 41 "src/hopixParser.mly"
    ( DeclareExtern (id,ts) )
# 470 "src/hopixParser.ml"
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
# 42 "src/hopixParser.mly"
             ( DefineValue v )
# 495 "src/hopixParser.ml"
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
        let _v : (HopixAST.definition) = let _endpos = _endpos__1_ in
        let _startpos = _startpos__1_ in
        
# 44 "src/hopixParser.mly"
    ( let pos=Position.lex_join _startpos _endpos in Error.error "parsing" pos "Syntax error.")
# 522 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 552 "src/hopixParser.ml"
          
        in
        
# 102 "src/hopixParser.mly"
                         ( Literal l )
# 558 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 595 "src/hopixParser.ml"
          
        in
        
# 104 "src/hopixParser.mly"
      ( Variable(id, l) )
# 601 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 645 "src/hopixParser.ml"
          
        in
        
# 108 "src/hopixParser.mly"
      ( Tagged (c, l1, l2) )
# 651 "src/hopixParser.ml"
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
# 111 "src/hopixParser.mly"
      ( Record( l1, l2) )
# 698 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 743 "src/hopixParser.ml"
          
        in
        let e =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 754 "src/hopixParser.ml"
          
        in
        
# 113 "src/hopixParser.mly"
      ( Field (e, l) )
# 760 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 805 "src/hopixParser.ml"
          
        in
        let e1 =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 816 "src/hopixParser.ml"
          
        in
        
# 115 "src/hopixParser.mly"
      ( Apply (e1, e2) )
# 822 "src/hopixParser.ml"
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
# 861 "src/hopixParser.ml"
         in
        
# 117 "src/hopixParser.mly"
      (
        Tuple (l)
      )
# 868 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 934 "src/hopixParser.ml"
          
        in
        let e2 =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 946 "src/hopixParser.ml"
          
        in
        let e1 =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 957 "src/hopixParser.ml"
          
        in
        
# 123 "src/hopixParser.mly"
      (
        IfThenElse (e1, e2, e3)
      )
# 965 "src/hopixParser.ml"
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
            MenhirLib.EngineTypes.semv = x_inlined1;
            MenhirLib.EngineTypes.startp = _startpos_x_inlined1_;
            MenhirLib.EngineTypes.endp = _endpos_x_inlined1_;
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
                  MenhirLib.EngineTypes.semv = x;
                  MenhirLib.EngineTypes.startp = _startpos_x_;
                  MenhirLib.EngineTypes.endp = _endpos_x_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _;
                    MenhirLib.EngineTypes.semv = _2;
                    MenhirLib.EngineTypes.startp = _startpos__2_;
                    MenhirLib.EngineTypes.endp = _endpos__2_;
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
        let x_inlined1 : (HopixAST.expression) = Obj.magic x_inlined1 in
        let _5 : unit = Obj.magic _5 in
        let _4 : unit = Obj.magic _4 in
        let x : (HopixAST.expression) = Obj.magic x in
        let _2 : unit = Obj.magic _2 in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__7_ in
        let _v : (HopixAST.expression) = let e2 =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1038 "src/hopixParser.ml"
          
        in
        let e1 =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1049 "src/hopixParser.ml"
          
        in
        
# 128 "src/hopixParser.mly"
      (
        While(e1, e2)
      )
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
          MenhirLib.EngineTypes.semv = _13;
          MenhirLib.EngineTypes.startp = _startpos__13_;
          MenhirLib.EngineTypes.endp = _endpos__13_;
          MenhirLib.EngineTypes.next = {
            MenhirLib.EngineTypes.state = _;
            MenhirLib.EngineTypes.semv = x_inlined3;
            MenhirLib.EngineTypes.startp = _startpos_x_inlined3_;
            MenhirLib.EngineTypes.endp = _endpos_x_inlined3_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = _11;
              MenhirLib.EngineTypes.startp = _startpos__11_;
              MenhirLib.EngineTypes.endp = _endpos__11_;
              MenhirLib.EngineTypes.next = {
                MenhirLib.EngineTypes.state = _;
                MenhirLib.EngineTypes.semv = _10;
                MenhirLib.EngineTypes.startp = _startpos__10_;
                MenhirLib.EngineTypes.endp = _endpos__10_;
                MenhirLib.EngineTypes.next = {
                  MenhirLib.EngineTypes.state = _;
                  MenhirLib.EngineTypes.semv = x_inlined2;
                  MenhirLib.EngineTypes.startp = _startpos_x_inlined2_;
                  MenhirLib.EngineTypes.endp = _endpos_x_inlined2_;
                  MenhirLib.EngineTypes.next = {
                    MenhirLib.EngineTypes.state = _;
                    MenhirLib.EngineTypes.semv = _8;
                    MenhirLib.EngineTypes.startp = _startpos__8_;
                    MenhirLib.EngineTypes.endp = _endpos__8_;
                    MenhirLib.EngineTypes.next = {
                      MenhirLib.EngineTypes.state = _;
                      MenhirLib.EngineTypes.semv = _7;
                      MenhirLib.EngineTypes.startp = _startpos__7_;
                      MenhirLib.EngineTypes.endp = _endpos__7_;
                      MenhirLib.EngineTypes.next = {
                        MenhirLib.EngineTypes.state = _;
                        MenhirLib.EngineTypes.semv = _6;
                        MenhirLib.EngineTypes.startp = _startpos__6_;
                        MenhirLib.EngineTypes.endp = _endpos__6_;
                        MenhirLib.EngineTypes.next = {
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
                    };
                  };
                };
              };
            };
          };
        } = _menhir_stack in
        let _13 : unit = Obj.magic _13 in
        let x_inlined3 : (HopixAST.expression) = Obj.magic x_inlined3 in
        let _11 : unit = Obj.magic _11 in
        let _10 : unit = Obj.magic _10 in
        let x_inlined2 : (HopixAST.expression) = Obj.magic x_inlined2 in
        let _8 : unit = Obj.magic _8 in
        let _7 : unit = Obj.magic _7 in
        let _6 : unit = Obj.magic _6 in
        let x_inlined1 : (HopixAST.expression) = Obj.magic x_inlined1 in
        let _4 : unit = Obj.magic _4 in
        let _3 : unit = Obj.magic _3 in
        let x : (HopixAST.identifier) = Obj.magic x in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__13_ in
        let _v : (HopixAST.expression) = let e3 =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined3_, _startpos_x_inlined3_, x_inlined3) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1172 "src/hopixParser.ml"
          
        in
        let e2 =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined2_, _startpos_x_inlined2_, x_inlined2) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1184 "src/hopixParser.ml"
          
        in
        let e1 =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1196 "src/hopixParser.ml"
          
        in
        let vID =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1207 "src/hopixParser.ml"
          
        in
        
# 136 "src/hopixParser.mly"
      (
        For(vID, e1, e2, e3)
      )
# 1215 "src/hopixParser.ml"
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
            MenhirLib.EngineTypes.semv = _3;
            MenhirLib.EngineTypes.startp = _startpos__3_;
            MenhirLib.EngineTypes.endp = _endpos__3_;
            MenhirLib.EngineTypes.next = {
              MenhirLib.EngineTypes.state = _;
              MenhirLib.EngineTypes.semv = x_inlined1;
              MenhirLib.EngineTypes.startp = _startpos_x_inlined1_;
              MenhirLib.EngineTypes.endp = _endpos_x_inlined1_;
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
        let x_inlined2 : (HopixAST.expression) = Obj.magic x_inlined2 in
        let _3 : unit = Obj.magic _3 in
        let x_inlined1 : (HopixAST.pattern) = Obj.magic x_inlined1 in
        let x : (HopixAST.identifier) = Obj.magic x in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_x_ in
        let _endpos = _endpos_x_inlined2_ in
        let _v : (HopixAST.function_definition HopixAST.polymorphic_definition) = let e =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined2_, _startpos_x_inlined2_, x_inlined2) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1267 "src/hopixParser.ml"
          
        in
        let p =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1279 "src/hopixParser.ml"
          
        in
        let id =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1290 "src/hopixParser.ml"
          
        in
        
# 77 "src/hopixParser.mly"
      (
        (id, None, FunctionDefinition(p, e))
      )
# 1298 "src/hopixParser.ml"
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
# 1319 "src/hopixParser.ml"
        ) = Obj.magic id in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_id_ in
        let _endpos = _endpos_id_ in
        let _v : (HopixAST.identifier) = 
# 158 "src/hopixParser.mly"
          ( Id id )
# 1327 "src/hopixParser.ml"
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
# 1348 "src/hopixParser.ml"
        ) = Obj.magic l in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_l_ in
        let _endpos = _endpos_l_ in
        let _v : (HopixAST.label) = 
# 176 "src/hopixParser.mly"
         ( LId l )
# 1356 "src/hopixParser.ml"
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
# 1374 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 1411 "src/hopixParser.ml"
          
        in
        
# 213 "<standard.mly>"
    ( x :: xs )
# 1417 "src/hopixParser.ml"
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
# 1438 "src/hopixParser.ml"
        ) = Obj.magic i in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_i_ in
        let _endpos = _endpos_i_ in
        let _v : (HopixAST.literal) = 
# 152 "src/hopixParser.mly"
              ( LInt i )
# 1446 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = c;
          MenhirLib.EngineTypes.startp = _startpos_c_;
          MenhirLib.EngineTypes.endp = _endpos_c_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let c : (
# 12 "src/hopixParser.mly"
       (char)
# 1467 "src/hopixParser.ml"
        ) = Obj.magic c in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_c_ in
        let _endpos = _endpos_c_ in
        let _v : (HopixAST.literal) = 
# 153 "src/hopixParser.mly"
              ( LChar c )
# 1475 "src/hopixParser.ml"
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
          MenhirLib.EngineTypes.semv = s;
          MenhirLib.EngineTypes.startp = _startpos_s_;
          MenhirLib.EngineTypes.endp = _endpos_s_;
          MenhirLib.EngineTypes.next = _menhir_stack;
        } = _menhir_stack in
        let s : (
# 11 "src/hopixParser.mly"
       (string)
# 1496 "src/hopixParser.ml"
        ) = Obj.magic s in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_s_ in
        let _endpos = _endpos_s_ in
        let _v : (HopixAST.literal) = 
# 154 "src/hopixParser.mly"
              ( LString s )
# 1504 "src/hopixParser.ml"
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
# 1522 "src/hopixParser.ml"
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
# 1561 "src/hopixParser.ml"
         in
        
# 144 "<standard.mly>"
    ( x )
# 1566 "src/hopixParser.ml"
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
# 1584 "src/hopixParser.ml"
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
# 1623 "src/hopixParser.ml"
         in
        
# 144 "<standard.mly>"
    ( x )
# 1628 "src/hopixParser.ml"
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
# 1646 "src/hopixParser.ml"
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
# 1685 "src/hopixParser.ml"
         in
        
# 144 "<standard.mly>"
    ( x )
# 1690 "src/hopixParser.ml"
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
# 1748 "src/hopixParser.ml"
           in
          
# 200 "<standard.mly>"
    ( x )
# 1753 "src/hopixParser.ml"
          
        in
        
# 144 "<standard.mly>"
    ( x )
# 1759 "src/hopixParser.ml"
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
# 1777 "src/hopixParser.ml"
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
# 1816 "src/hopixParser.ml"
         in
        
# 144 "<standard.mly>"
    ( x )
# 1821 "src/hopixParser.ml"
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
# 1839 "src/hopixParser.ml"
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
# 1878 "src/hopixParser.ml"
         in
        
# 144 "<standard.mly>"
    ( x )
# 1883 "src/hopixParser.ml"
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
# 1901 "src/hopixParser.ml"
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
# 1926 "src/hopixParser.ml"
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
# 1944 "src/hopixParser.ml"
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
# 1969 "src/hopixParser.ml"
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
# 1988 "src/hopixParser.ml"
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
# 2015 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2045 "src/hopixParser.ml"
          
        in
        
# 221 "<standard.mly>"
    ( [ x ] )
# 2051 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2088 "src/hopixParser.ml"
          
        in
        
# 223 "<standard.mly>"
    ( x :: xs )
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
        let _menhir_s = _menhir_env.MenhirLib.EngineTypes.current in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _endpos = _startpos in
        let _v : (unit option) = 
# 114 "<standard.mly>"
    ( None )
# 2112 "src/hopixParser.ml"
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
# 2137 "src/hopixParser.ml"
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
# 2155 "src/hopixParser.ml"
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
# 2195 "src/hopixParser.ml"
           in
          
# 200 "<standard.mly>"
    ( x )
# 2200 "src/hopixParser.ml"
          
        in
        
# 116 "<standard.mly>"
    ( Some x )
# 2206 "src/hopixParser.ml"
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
# 2224 "src/hopixParser.ml"
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
            
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2262 "src/hopixParser.ml"
            
          in
          
# 183 "<standard.mly>"
    ( x )
# 2268 "src/hopixParser.ml"
          
        in
        
# 116 "<standard.mly>"
    ( Some x )
# 2274 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2304 "src/hopixParser.ml"
          
        in
        
# 145 "src/hopixParser.mly"
                              ( PVariable(id) )
# 2310 "src/hopixParser.ml"
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
# 146 "src/hopixParser.mly"
                              ( PWildcard )
# 2335 "src/hopixParser.ml"
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
          };
        } = _menhir_stack in
        let _3 : unit = Obj.magic _3 in
        let l : (HopixAST.pattern Position.located list) = Obj.magic l in
        let _1 : unit = Obj.magic _1 in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos__1_ in
        let _endpos = _endpos__3_ in
        let _v : (HopixAST.pattern) = 
# 148 "src/hopixParser.mly"
    ( PTuple (l) )
# 2374 "src/hopixParser.ml"
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
# 26 "src/hopixParser.mly"
(
  v
)
# 2408 "src/hopixParser.ml"
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
# 2433 "src/hopixParser.ml"
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
# 2472 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2502 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 2508 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2552 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 2558 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2588 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 2594 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2638 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 2644 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2674 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 2680 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2724 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 2730 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2760 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 2766 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2810 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 2816 "src/hopixParser.ml"
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
            
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2862 "src/hopixParser.ml"
            
          in
          let x =
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2873 "src/hopixParser.ml"
            
          in
          
# 175 "<standard.mly>"
    ( (x, y) )
# 2879 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 2885 "src/hopixParser.ml"
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
            
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2945 "src/hopixParser.ml"
            
          in
          let x =
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 2956 "src/hopixParser.ml"
            
          in
          
# 175 "<standard.mly>"
    ( (x, y) )
# 2962 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 2968 "src/hopixParser.ml"
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
            
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3015 "src/hopixParser.ml"
            
          in
          let x =
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3026 "src/hopixParser.ml"
            
          in
          
# 175 "<standard.mly>"
    ( (x, y) )
# 3032 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 3038 "src/hopixParser.ml"
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
            
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3100 "src/hopixParser.ml"
            
          in
          let x =
            let _endpos = _endpos_x_ in
            let _startpos = _startpos_x_ in
            
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3111 "src/hopixParser.ml"
            
          in
          
# 175 "<standard.mly>"
    ( (x, y) )
# 3117 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 3123 "src/hopixParser.ml"
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
            
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3162 "src/hopixParser.ml"
            
          in
          
# 167 "<standard.mly>"
    ( (x, y) )
# 3168 "src/hopixParser.ml"
          
        in
        
# 241 "<standard.mly>"
    ( [ x ] )
# 3174 "src/hopixParser.ml"
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
            
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3228 "src/hopixParser.ml"
            
          in
          
# 167 "<standard.mly>"
    ( (x, y) )
# 3234 "src/hopixParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 3240 "src/hopixParser.ml"
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
# 3273 "src/hopixParser.ml"
         in
        
# 51 "src/hopixParser.mly"
    ( 
      DefineSumType (l) 
    )
# 3280 "src/hopixParser.ml"
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
# 58 "src/hopixParser.mly"
    ( DefineRecordType (l) )
# 3305 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3342 "src/hopixParser.ml"
          
        in
        
# 98 "src/hopixParser.mly"
    (  ForallTy (l,t) )
# 3348 "src/hopixParser.ml"
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
# 87 "src/hopixParser.mly"
    ( TyCon(t, l) )
# 3380 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3425 "src/hopixParser.ml"
          
        in
        let t1 =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3436 "src/hopixParser.ml"
          
        in
        
# 89 "src/hopixParser.mly"
    ( TyArrow (t1,t2) )
# 3442 "src/hopixParser.ml"
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
        let _v : (HopixAST.ty) = let l =
          let (_endpos_x_, _startpos_x_, x) = (_endpos_x_inlined1_, _startpos_x_inlined1_, x_inlined1) in
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3487 "src/hopixParser.ml"
          
        in
        let l1 =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3498 "src/hopixParser.ml"
          
        in
        
# 91 "src/hopixParser.mly"
    ( TyTuple(l1::[l]) )
# 3504 "src/hopixParser.ml"
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
# 93 "src/hopixParser.mly"
    ( TyVar t )
# 3529 "src/hopixParser.ml"
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
# 3550 "src/hopixParser.ml"
        ) = Obj.magic t in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_t_ in
        let _endpos = _endpos_t_ in
        let _v : (HopixAST.type_constructor) = 
# 167 "src/hopixParser.mly"
         ( TCon t )
# 3558 "src/hopixParser.ml"
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
# 3579 "src/hopixParser.ml"
        ) = Obj.magic v in
        let _endpos__0_ = _menhir_stack.MenhirLib.EngineTypes.endp in
        let _startpos = _startpos_v_ in
        let _endpos = _endpos_v_ in
        let _v : (HopixAST.type_variable) = 
# 171 "src/hopixParser.mly"
           ( TId v )
# 3587 "src/hopixParser.ml"
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
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3646 "src/hopixParser.ml"
          
        in
        let x =
          let _endpos = _endpos_x_ in
          let _startpos = _startpos_x_ in
          
# 179 "src/hopixParser.mly"
                        (
  Position.with_poss _startpos _endpos x
)
# 3657 "src/hopixParser.ml"
          
        in
        
# 65 "src/hopixParser.mly"
    (
      SimpleValue (x, t, y)  (*UTILISER X? OU OPTION(X)  pour option*) 
    )
# 3665 "src/hopixParser.ml"
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
# 69 "src/hopixParser.mly"
    (
      RecFunctions(l)
    )
# 3699 "src/hopixParser.ml"
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
  

# 3740 "src/hopixParser.ml"
