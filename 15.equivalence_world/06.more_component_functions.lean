constructor
· exact fun f ↦ ⟨f ∘ Sum.inl, f ∘ Sum.inr⟩
· intro ⟨f1, f2⟩
  intro ab
  rcases ab with a | b
  · exact f1 a
  · exact f2 b
· intro f
  ext ab
  rcases ab with a | b
    <;> rfl
· intro ⟨f1, f2⟩
  rfl
