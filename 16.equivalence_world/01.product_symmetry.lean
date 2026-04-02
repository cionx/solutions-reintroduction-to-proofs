have swap_involutive {A B : Type} : ∀ (p : A × B),  Prod.swap (Prod.swap p) = p := by
  intro ⟨a, b⟩
  rfl

constructor
· exact Prod.swap
· exact Prod.swap
· exact swap_involutive
· exact swap_involutive
