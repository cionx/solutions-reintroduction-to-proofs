let eval {P Q : Prop} (p : P) (h : P → Q) : Q := h p

exact eval
