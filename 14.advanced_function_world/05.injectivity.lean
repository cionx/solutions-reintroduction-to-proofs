have not_involutive : ∀ (b : Bool), not (not b) = b := by
  intro b
  cases b
    <;> rfl

intro x y hxy
rw [← not_involutive x, ← not_involutive y]
exact congrArg not hxy
