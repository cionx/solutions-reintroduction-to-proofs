let not_or' {P Q : Prop} : ¬ (P ∨ Q) → (¬ P) ∧ (¬ Q) :=
  fun h ↦ ⟨h ∘ Or.inl, h ∘ Or.inr⟩

let eval {P Q : Prop} : P → (P → Q) → Q := flip id

apply byContradiction
exact (And.uncurry eval) ∘ not_or'
