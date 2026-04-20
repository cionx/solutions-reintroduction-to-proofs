rcases inv with ⟨g, hg⟩
constructor
· -- Injectivity.
  intro a1 a2 fa1_eq_fa2
  rw [← hg.1 a1, ← hg.1 a2]
  exact congrArg g fa1_eq_fa2
· -- Surjectivity
  intro b
  use g b
  rw [hg.2]
  rfl
