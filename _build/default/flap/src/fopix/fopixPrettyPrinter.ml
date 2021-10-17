open PPrintCombinators
open PPrintEngine

open FopixAST

let ( ++ ) x y =
  x ^^ break 1 ^^ y

let located f x = f (Position.value x)

let rec program p =
  separate_map hardline definition p

and definition = function
  | DefineValue (x, e) ->
    nest 2 (
      group (string "val" ++ identifier x ++ string "=")
      ++ group (expression e)
    )

  | DefineFunction (f, xs, e) ->
    nest 2 (
      group (string "def" ++ function_identifier f
             ++ PPrintOCaml.tuple (List.map identifier xs)
             ++ string "=")
      ++ group (expression e)
    )

  | ExternalFunction (f, n) ->
    group (string "external" ++ function_identifier f
           ++ string ":" ++ string (string_of_int n))

and identifier (Id x) =
  string x

and function_identifier (FunId x) =
  string x

and expression = function
  | Literal l ->
    literal l
  | Variable x ->
    identifier x
  | FunCall (FunId f, es) ->
    funcall f es
  | While (cond, e) ->
     nest 2 (
         group (string "while"
                ++ group (expression cond)
                ++ string "do"
                ++ group (expression e)
                ++ string "done")
       )
  | IfThenElse (c, t, f) ->
    nest 2 (
      group (string "if"
             ++ group (expression c)
             ++ string "then"
      )
      ++ group (expression t))
    ++ nest 2 (
      group (string "else"
                ++ group (expression f))
         )
    ++ string "end"
  | Define (x, e1, e2) ->
    nest 2 (
      group (
        group (string "val"
               ++ identifier x
               ++ string "="
        )
        ++ group (expression e1)
        ++ string ";"
      )
    )
    ++ group (expression e2)
  | UnknownFunCall (e, es) ->
    string "call" ++ parens (expression e) ++ string "with"
    ++ PPrintOCaml.tuple (List.map expression es)
  | Switch (e, bs, default) ->
    group (string "switch" ++ expression e ++ string "in")
    ++ group (
      branches bs
    ) ^^ begin match default with
      | None -> empty
      | Some t -> break 1 ^^ group (string "orelse" ++ expression t)
    end ++ string "end"

and branches bs =
  let bs = List.mapi (fun i x -> (i, x)) (Array.to_list bs) in
  separate_map (string "|" ^^ break 1) (fun (i, t) ->
      group (
          string (string_of_int i) ^^  match t with
                                     | None -> string "!"
                                     | Some t -> expression t)
    ) bs

and funcall f es =
  match f, es with
    | ("`=?`" | "`*`" | "`/`" | "`+`" | "`-`" | "`%`"
       | "`<?`" | "`>?`" | "`<=?`" | "`>=?`"),
      [ lhs; rhs ] ->
      let op = String.(sub f 1 (length f - 2)) in
      group (parens (expression lhs ++ string op ++ expression rhs))
    | _, _ ->
      let ts = PPrintOCaml.tuple (List.map expression es) in
      group (string f ++ ts)

and literal = function
  | LInt x ->
    int x
  | LChar c ->
    char c
  | LString s ->
    string_literal s
  | LFun (FunId f) ->
    string ("&" ^ f)

and char c =
  group (string "'" ^^ string (Char.escaped c) ^^ string "'")

and string_literal s =
  group (string "\"" ^^ string (String.escaped s) ^^ string "\"")

and int x =
  string (Mint.to_string x)

let to_string f x =
  let b = Buffer.create 13 in
  ToBuffer.pretty 0.7 80 b (f x);
  Buffer.contents b
