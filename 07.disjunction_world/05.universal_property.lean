constructor
· intro h
  exact ⟨h ∘ Or.inl, h ∘ Or.inr⟩
· intro ⟨h1, h2⟩
  intro pq
  rcases pq with p | q
  · exact h1 p
  · exact h2 q
