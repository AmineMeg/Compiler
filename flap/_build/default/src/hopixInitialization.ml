# 1 "src/hopix/hopixInitialization.ml"
let initialize () =
  Languages.register (module Hopix);
  Compilers.register (module Compilers.Identity (Hopix))

