type expr =
  | Unit
  | Bool of bool
  | Float of float
  | Neg of  expr
  | Add of expr * expr
  | Sub of expr * expr
  | Mult of expr * expr
  | Div of expr * expr
  | Eq of  expr * expr
  | Le of expr * expr
  | If of expr * expr * expr
  | Let of (Id.t * Type.t) * expr * expr
  | Var of Id.t
  | LetRec of fundef * expr
  | App of (Id.t * Type.t * Type.t list) * expr list
  | ExtFunApp of Id.t * expr list
and
  fundef = { name: Id.t * Type.t; args: (Id.t * Type.t) list; body: expr }

val inter_rep : Syntax.expr -> expr
