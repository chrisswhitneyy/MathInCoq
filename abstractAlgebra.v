Require Import Coq.ZArith.ZArith.

Inductive A : Type :=
  | NegOne : A
  | Zero : A
  | PosOne : A.

Definition eq (a:A) (b:A) : Prop :=
  match a,b with
  | NegOne , NegOne => True
  | PosOne , PosOne => True
  | Zero, Zero => True
  | _ , _ => False
  end.

Definition neq (a:A) (b:A) : Prop :=
  not ( eq a b ) .

Definition f (a:A) (b:A) : A :=
  match a , b with
  | NegOne , NegOne => PosOne
  | PosOne , PosOne => NegOne
  | NegOne , PosOne => PosOne
  | PosOne , NegOne => NegOne
  | Zero , Zero => NegOne
  | Zero , _ => PosOne
  | _ , _ => PosOne
  end.

Notation "x = y" := (eq x y) (at level 70).
Notation "x ^ 2" := (f x x) (at level 20).
Notation "x $ y" := (f x y) (at level 20).

(* Constradicting Example of assosativity of function composition *)
(* (a $ b)^2 != a^2 $ b^2  *)
Definition a := NegOne.
Definition b := PosOne.
Compute (a $ b)^2 = a^2 $ b^2.

(* (a $ b)^2 != a^2 $ b^2  *)
Theorem not_assosative_fncomp :
  exists a b : A, 
   not ((a $ b)^2 = a^2 $ b^2).
Proof.
  destruct a, b.
  admit.
Admitted.

  
