let eval {P Q : Prop} (p : P) (h : P → Q) := h p

let double_neg {P : Prop} : P → ¬ ¬ P := eval

exact And.uncurry double_neg
