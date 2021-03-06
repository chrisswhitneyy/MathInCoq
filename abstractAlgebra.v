Require Import Coq.ZArith.ZArith
        Coq.Reals.Rdefinitions
        Coq.Reals.Raxioms.

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

Notation "x != y" := (neq x y) (at level 20).
Notation "x ^ 2" := (f x x) (at level 20).
Notation "x $ y" := (f x y) (at level 20).

(* Constradicting example f not being distrubutive under function composition *)
(* (a $ b)^2 != a^2 $ b^2  *)
Definition a := NegOne.
Definition b := PosOne.
Compute (a $ b)^2 = a^2 $ b^2.

(* Theorem proving f is not distrubutive  under function composition *) 
(* (a $ b)^2 != a^2 $ b^2  *)
Theorem f_funcomp_not_distrubutive :
  exists a b : A, 
   (a $ b)^2 != (a^2 $ b^2).
Proof.
  exists a, b. unfold neq,not. trivial.
Qed.

(* Is the following operation assosicative *) 
Definition g (a:R) (b:R) : R := 1%R + (Rmult a b).

Theorem g_assosicative :
  forall a b c : R,
    g a (g b c) = g (g a b) c.
Proof.
  intros a b c. unfold g.
  admit.
Admitted.

Inductive B : Type := | nil : B .

Definition f1 (a:B) (b:B) : B := a.
Definition g1 (a:B) (b:B) : B := a.

Theorem function_comp_associative:
  forall A  (f : A -> A ) (g : A -> A),
  forall x : A,
    f ( g x ) = g ( f x ).
Proof.
  intros A f g x. admit.
Admitted.


                                                           



  
