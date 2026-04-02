have swap_involutive {A B : Type} : ∀ (x : A ⊕ B), Sum.swap (Sum.swap x) = x := by
  intro x
  rcases x with a | b
    <;> rfl

constructor
· exact Sum.swap
· exact Sum.swap
· exact swap_involutive
· exact swap_involutive
