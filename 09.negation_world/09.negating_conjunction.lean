have And.fst {P Q : Prop} : P ∧ Q → P := fun ⟨p, _⟩ ↦ p
have And.snd {P Q : Prop} : P ∧ Q → Q := fun ⟨_, q⟩ ↦ q

have Or.lift {P Q R : Prop} : (P → R) → (Q → R) → (P ∨ Q → R) := by
  intro h1 h2 pq
  rcases pq with p | q
  · exact h1 p
  · exact h2 q

have syllogism {P Q R : Prop} : (P → Q) → (Q → R) → (P → R) := flip Function.comp

have modus_tollens {P Q : Prop} : (P → Q) → (¬ Q → ¬ P) := syllogism

exact Or.lift (modus_tollens And.fst) (modus_tollens And.snd)
