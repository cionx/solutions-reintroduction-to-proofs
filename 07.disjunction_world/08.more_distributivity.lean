constructor
· intro ⟨p_q, r_s⟩
  rcases p_q with p | q
  · rcases r_s with r | s
    · left; exact ⟨p, r⟩
    · right; left; exact ⟨p, s⟩
  · rcases r_s with r | s
    · right; right; left; exact ⟨q, r⟩
    · right; right; right; exact ⟨q, s⟩
· intro x
  rcases x with ⟨p, r⟩ | ⟨p, s⟩ | ⟨q, r⟩ | ⟨q, s⟩
  · exact ⟨Or.inl p, Or.inl r⟩
  · exact ⟨Or.inl p, Or.inr s⟩
  · exact ⟨Or.inr q, Or.inl r⟩
  · exact ⟨Or.inr q, Or.inr s⟩
