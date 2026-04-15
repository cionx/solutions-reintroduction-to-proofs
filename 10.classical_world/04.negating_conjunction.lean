have modus_ponens {P Q : Prop} : P → (P → Q) → Q :=
  flip id

have imp_double_neg {P : Prop} : P → ¬ ¬ P :=
  modus_ponens

have syllogism {P Q R : Prop} : (P → Q) → ((Q → R) → (P → R)) :=
  flip Function.comp

have modus_tollens {P Q : Prop} : (P → Q) → (¬ Q → ¬ P) :=
  syllogism

have technical {P Q : Prop} : (P → ¬ ¬ Q) → (P → Q) :=
  Function.comp byContradiction

have Or.components {P Q R : Prop} : ((P ∨ Q) → R) → (P → R) ∧ (Q → R) :=
  fun h ↦ ⟨h ∘ Or.inl, h ∘ Or.inr⟩

have Or.negation {P Q : Prop} : ¬ (P ∨ Q) → (¬ P) ∧ (¬ Q) :=
  Or.components

have And.imp_imp {P Q T U : Prop} : (P → T) → (Q → U) → (P ∧ Q → T ∧ U) := by
  intro h1 h2
  exact fun ⟨p, q⟩ ↦ ⟨h1 p, h2 q⟩

apply technical
apply modus_tollens
exact (And.imp_imp byContradiction byContradiction) ∘ Or.negation
