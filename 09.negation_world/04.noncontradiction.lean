have modus_ponens {P Q : Prop} : P → (P → Q) → Q := flip id

have double_neg {P : Prop} : P → ¬ ¬ P := modus_ponens

exact And.uncurry double_neg
