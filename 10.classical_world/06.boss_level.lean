have Or.components {P Q T : Prop} : (P ∨ Q → T) → (P → T) ∧ (Q → T) :=
  fun h ↦ ⟨h ∘ Or.inl, h ∘ Or.inr⟩

have Or.negation {P Q : Prop} : ¬ (P ∨ Q) → (¬ P) ∧ (¬ Q) :=
  Or.components

have modus_ponens {P Q : Prop} : P → (P → Q) → Q := flip id

apply byContradiction
exact (And.uncurry modus_ponens) ∘ Or.negation
