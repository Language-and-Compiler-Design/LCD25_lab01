(* This file contains the description of the calc language and some utils related to the AST *)

(* The abstract syntax tree (AST) type for the calc language *)
type ast = 
    Num of int
  | Add of ast * ast
  | Sub of ast * ast
  | Mul of ast * ast
  | Div of ast * ast
  | Neg of ast

(* This function converts an AST back to a string representation of the expression *)
let rec unparse_ast = function
  | Num x -> string_of_int x
  | Add (e1,e2) -> (unparse_ast e1 ^ " + " ^ unparse_ast e2)
  | Sub (e1,e2) -> (unparse_ast e1 ^ " - " ^ unparse_ast e2)
  | Mul (e1,e2) -> (unparse_ast e1 ^ " * " ^ unparse_ast e2)
  | Div (e1,e2) -> (unparse_ast e1 ^ " / " ^ unparse_ast e2)
  | Neg e1 -> ("-"^unparse_ast e1)

(* Extension point: This function needs to be extended in a way to include parenthesis when necessary *)

