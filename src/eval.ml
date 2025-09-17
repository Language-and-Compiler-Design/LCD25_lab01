(* This file contains the definitional interpreter for the calc language *)

open Ast

let rec eval = function
  | Num n -> n
  | Add (e1,e2) -> eval e1 + eval e2
  | _ -> assert false

(* Extension point: This function needs to be extended to cover all the cases of the AST *)
