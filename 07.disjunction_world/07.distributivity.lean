constructor
· intro ⟨p, q_r⟩
  rcases q_r with q | r
  · exact Or.inl ⟨p, q⟩
  · exact Or.inr ⟨p, r⟩
· intro pq_pr
  rcases pq_pr with ⟨p, q⟩ | ⟨p, r⟩
  · exact ⟨p, Or.inl q⟩
  · exact ⟨p, Or.inr r⟩
