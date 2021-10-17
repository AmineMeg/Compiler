# 1 "flap/src/utilities/option.ml"
let map f = function
  | None -> None
  | Some x -> Some (f x)

let destruct default f = function
  | None -> default ()
  | Some x -> f x
