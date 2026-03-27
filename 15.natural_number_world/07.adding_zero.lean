intro n
constructor
· exact Nat.add_zero n
· induction n with k hk
  · rfl
  · rw [Nat.add_succ]
    rw [hk]
    rfl
