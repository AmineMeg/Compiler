# 1 "src/elf/elfTypechecker.ml"
(** There is no typechecker for ELF programs in flap. *)

type typing_environment = unit

let initial_typing_environment () = ()

let typecheck () _ast = ()

let print_typing_environment () = ""
