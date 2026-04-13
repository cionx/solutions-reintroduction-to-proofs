have modus_ponens {P Q : Prop} : P → (P → Q) → Q := flip id

exact modus_ponens
