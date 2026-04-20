intro m n
constructor
· exact Nat.add_succ m n
· induction n with k hk
  · rw [Nat.add_zero m.succ]
    rw [Nat.add_zero m]
    rfl
  · rw [Nat.add_succ m.succ k]
    rw [Nat.add_succ m k]
    rw [hk]
    rfl
