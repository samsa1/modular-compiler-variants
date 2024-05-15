open Modexp_lib

let main () =
  let open Show in
  print (module SList(SPair(SInt)(SString)))
        [(0, "Hello"); (1, "world"); (2, "!")];
  print_newline ()



let () = main ()