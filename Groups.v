Require Import ZArith.
      
(* The set of the group. *)
Parameter G : Set.

(* The binary operator. *)
Parameter f : G -> G -> G.

(* The group identity. *)
Parameter e : G.

(* The inverse operator. *)
Parameter i : G -> G.

(* For readability, we use infix <+> to stand for the binary operator. *)
Infix "<+>" := f (at level 50, left associativity).

(* The operator [f] is associative. *)
Axiom assoc : forall a b c, a <+> b <+> c = a <+> (b <+> c).

(* [e] is the right-identity for all elements [a] *)
Axiom id_r : forall a, a <+> e = a.

(* [i a] is the right-inverse of [a]. *)
Axiom inv_r : forall a, a <+> i a = e.

(* Theorem 2.47. If G is a group and g in G, 
   then for all n,m in Z g^n g^m = g^(n + m) *)

(* Week theroem since you have to assume that the binary op 
   is distrubutive which isn't always true, thus is only true
   for a sub class of operations. *) 
Theorem expo_rule1 :
  forall g m n: G,
    (g <+> (n <+> m) = g <+> n <+> g <+> m) -> 
    ( (g <+> n ) <+> (g <+> m) = g <+> (n <+> m) ).
Proof.
  intros. rewrite <- assoc. rewrite H. reflexivity.
Qed.

(* Theorem 2.42. If G is a group, then for all g,h in G, 
   the equations gx = h and yg=h have unique solutions 
   for x and y in G.*)
Theorem unquie_soln:
  forall g h x y: G,
    g <+> x = h /\ y <+> g = h -> y <> x.
Proof.
  intros g h x y eqnH. admit.
Admitted.

(* Theorem 2.44. If G is a group, then (g^-1)^-1 = g forall g in G *)
Theorem g_inverse_inverse_g :
  forall g : G,
    i (i g) = g.
Proof.
  intros g. admit.
Admitted.




