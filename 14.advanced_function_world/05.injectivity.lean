have not_involutive : ∀ (x : Bool), not (not x) = x := by
  intro x
  cases x
    <;> rfl

intro x y hxy
rw [← not_involutive x, ← not_involutive y]
exact congrArg not hxy
