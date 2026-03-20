rcases inv with ⟨g, hg⟩
constructor
· intro x y fx_eq_fy
  rw [← hg.1 x, ← hg.1 y]
  exact congrArg g fx_eq_fy
· intro b
  use g b
  rw [hg.2]
  rfl
