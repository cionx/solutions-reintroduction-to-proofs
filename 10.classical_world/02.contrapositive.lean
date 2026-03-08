let yoneda {P Q R : Prop} : (P → Q) → (Q → R) → (P → R) := fun h1 h2 ↦ h2 ∘ h1

let contrapos {P Q : Prop} : (P → Q) → (¬ Q → ¬ P) := yoneda

let eval {P Q : Prop} : P → (P → Q) → Q := flip id

let imp_double_neg {P : Prop} : P → ¬ ¬ P := eval

intro h
exact byContradiction ∘ (contrapos h) ∘ imp_double_neg
