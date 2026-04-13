have modus_ponens {P Q : Prop} : P → (P → Q) → Q := flip id

have imp_double_neg {P : Prop} : P → ¬ ¬ P := modus_ponens

have syllogism {P Q R : Prop} : (P → Q) → (Q → R) → (P → R) := flip Function.comp

have modus_tollens {P Q : Prop} : (P → Q) → (¬ Q → ¬ P) := syllogism

exact ⟨imp_double_neg, modus_tollens imp_double_neg⟩
