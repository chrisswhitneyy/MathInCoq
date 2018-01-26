Require Import Coq.ZArith.ZArith
               Coq.ZArith.Znumtheory.

Theorem prime_a :
  forall a n : Z,
    Z.gt a 0%Z -> Z.gt n 1%Z ->
    prime ((Z.pow a n) - 1%Z) ->
    Z.eq a 2%Z /\ prime n.
Proof.
  intros. split. 
  - simpl.
Admitted.