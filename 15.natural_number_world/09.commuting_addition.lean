intro m n
induction n with k hk
· rw [Nat.add_zero, Nat.zero_add]
  rfl
· rw [Nat.add_succ, Nat.succ_add]
  rw [hk]
  rfl
