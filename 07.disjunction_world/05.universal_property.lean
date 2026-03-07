constructor
· intro pq_r
  exact ⟨pq_r ∘ Or.inl, pq_r ∘ Or.inr⟩
· intro ⟨p_r, q_r⟩
  intro pq
  rcases pq with p | q
  · exact p_r p
  · exact q_r q
