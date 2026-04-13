have syllogism {P Q R : Prop} : (P → Q) → (Q → R) → (P → R) := flip Function.comp

exact syllogism
