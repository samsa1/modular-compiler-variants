# modular-compiler-variants
This repository exists in order to hold OCaml variants for modular explicits and modular implicit

## Install modular explicits compiler :

```
opam repo add modular-variants git+https://github.com/samsa1/modular-compiler-variants.git
opam switch create 5.2.0+modular-explicits --repos modular-variants,default
```

To have modular explicit and type arguments for modules, use the branch :
```
opam switch create 5.2.0+modexp+typearg --repos modular-variants,default
```

For testing modular implicits prototype :
```
opam switch create 5.2.0+dev+modular-implicits --repos modular-variants,default
```


## Branch 5.3.0+modular-explicits

### /!\ This version is considerer depreciated and you should consider using the branch presented below

Uses a new syntax
```ocaml
let f
    : {M : Typ} -> M.t -> M.t
    = fun {M : Typ} (x : M.t) -> x
```

## Branch 5.2.0+modular-explicits

Uses the same syntax as first-class modules and has fewer bugs

```ocaml
let f
    : (module M : Typ) -> (module Typ) -> M.t -> M.t
    = fun (module M : Typ) (module N : Typ) (x : M.t) = x
```

Modular explicits introduce a new type `(module M : S) -> t` where `M` can appear
in `t`. It is a module dependent arrow.

The types `(module M : S) -> t` and `(module S) -> t` are compatible if `M` does
not appear in `t`. Thus, modular explicits extend first-class modules by improving
their expressivity without changing how the user writes functions (this only impact types).


## Using this

A small library to help people use modular explicits (with branch `5.2.0+modular-explicits`) can be installed using :

```ocaml
opam install modexp_lib
```

An example of printing using this library is available in the example folder.
More information about this library can also be found on its repository [modexp-stdlib](https://github.com/samsa1/modexp-stdlib).