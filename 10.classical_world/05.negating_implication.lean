have And.lift {P Q R : Prop} : (P → Q) → (P → R) → (P → Q ∧ R) := by
  intro h1 h2
  exact fun p ↦ ⟨h1 p, h2 p⟩

have modus_tollens {P Q : Prop} : (P → Q) → (¬ Q → ¬ P) :=
  flip Function.comp

have const {P Q : Prop} : Q → (P → Q) := by
  intro q
  exact fun _ ↦ q

have absurd {P Q : Prop} : P → (¬ P) → Q := by
  intro p np
  exact False.elim (np p)

have technical {P Q : Prop} : (P → ¬ ¬ Q) → (P → Q) :=
  Function.comp byContradiction

apply And.lift
· apply technical
  apply modus_tollens
  exact flip absurd
· apply modus_tollens
  exact const
