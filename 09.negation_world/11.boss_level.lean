have modus_ponens {P Q R : Prop} : P → (P → Q) → Q := flip id

have False.absurd {P Q : Prop} : P → (¬ P) → Q := by
  intro p np
  exact False.elim (np p)

have Or.lift {P Q R : Prop} : (P → R) → (Q → R) → (P ∨ Q → R) := by
  intro h1 h2 pq
  rcases pq with p | q
  · exact h1 p
  · exact h2 q

have const {P Q : Prop} : Q → (P → Q) := fun q ↦ (fun _ ↦ q)

exact Or.lift const False.absurd
