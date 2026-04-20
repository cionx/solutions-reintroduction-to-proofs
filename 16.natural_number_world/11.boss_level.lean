/- Idea:
 - The proof of ¬ (true = false) went as follows:
 -
 -     We can consider for any terms t1 and t2 of
 -     any type T the function
 -       true  ↦ t1,
 -       false ↦ t2.
 -     If true = false, then it would follow that
 -     also t1 = t2. In particular, choosing T as
 -     Prop, we would find that True = False, and
 -     therefore that the identity function
 -       False → False
 -     would also be a function
 -       True → False.
 -     Applying this to the unique term of type
 -     True, we get a proof of False.
 -
 - We can mimic this proof: if 0 = succ n for some
 - natural number n, and
 -   f : ℕ → T
 - is defined by recursion, then we have two ways
 - of determining f 0:
 - 1. As f 0, the recursive base case.
 - 2. As f (succ n), via the recursion step.
 - We can, in particular, consider for f the
 - function given by
 -   0 ↦ t1,  succ _ ↦ t2.
 - Then we find from 0 = succ n that t1 = t2, and
 - can proceed as before.
-/

intro zero_is_succ
let n := zero_is_succ.choose
have succ_n_eq_zero : succ n = 0 := zero_is_succ.choose_spec

have all_prop_equal (P Q : Prop) : P = Q := by
  let f (n : ℕ) :=
    match n with
    | zero => Q
    | succ n => P
  exact congrArg f succ_n_eq_zero

have all_imp_all (P Q : Prop) : P → Q := by
  rw [all_prop_equal P Q]
  exact id

exact (all_imp_all True False) ⟨⟩
