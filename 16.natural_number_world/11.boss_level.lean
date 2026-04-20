intro zero_is_succ
let n := zero_is_succ.choose
have succ_n_eq_zero : succ n = 0 := zero_is_succ.choose_spec

have all_equal {A : Type} (a b : A) : a = b := by
  let f (n : ℕ) :=
    match n with
    | zero   => b
    | succ n => a
  have ha : f 0 = b := rfl
  have hb : f (succ n) = a := rfl
  rw [← ha, ← hb]
  exact congrArg f succ_n_eq_zero

rw [all_equal False True]
exact ⟨⟩
