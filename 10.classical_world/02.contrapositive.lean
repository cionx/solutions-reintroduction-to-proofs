have syllogism {P Q R : Prop} : (P → Q) → (Q → R) → (P → R) := flip Function.comp

have modus_tollens {P Q : Prop} : (P → Q) → (¬ Q → ¬ P) := syllogism

have modus_ponens {P Q : Prop} : P → (P → Q) → Q := flip id

have imp_double_neg {P : Prop} : P → ¬ ¬ P := modus_ponens

intro h
exact byContradiction ∘ (modus_tollens h) ∘ imp_double_neg
