constructor
· intro hP
  intro ⟨x, hx⟩
  exact (hP x) hx
· intro hP
  intro x hx
  have hP' : ∃ x, P x := by
    use x
    exact hx
  exact hP hP'
