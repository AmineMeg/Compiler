# 1 "flap/src/hobix/hobixInitialization.ml"
let initialize () =
  Languages.register (module Hobix);
  Compilers.register (module HopixToHobix);
  Compilers.register (module Compilers.Identity (Hobix))
