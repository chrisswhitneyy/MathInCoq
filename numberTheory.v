Require Import Coq.ZArith.ZArith
               Coq.ZArith.Znumtheory.

Theorem prime_fact_1 :
  forall a n : Z, Z.gt a 0%Z -> Z.gt n 0%Z -> Z.divide 2 (a^n) -> Z.divide (2^n) (a^n).
Proof.
  intros a n gta0 gtn0 divides_an. admit.
Admitted.



  