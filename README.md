# modular-compiler-variants
This repository exists in order to hold OCaml variants for modular explicit and modular implicit

## Install modular explicit compiler :

```
opam repo add modular-variants git+https://github.com/samsa1/modular-compiler-variants.git
opam switch create 5.2.0+modular-explicits --repos modular-variants,default
```

## Branch 5.3.0+modular-explicits

Uses a new syntax
```ocaml
let f
    : {M : Typ} -> M.t -> M.t
    = fun {M : Typ} (x : M.t) -> x
```

## Branch 5.2.0+modular-explicits

Uses the same syntax a first class modules and has less bugs

```ocaml
let f
    : (module M : Typ) -> (module Typ) -> M.t -> M.t
    = fun (module M : Typ) (module N : Typ) (x : M.t) = x
```
