intro p_np
rcases p_np with p | np
· exact fun _ ↦ p
· intro nnp
  exact False.elim (nnp np)
