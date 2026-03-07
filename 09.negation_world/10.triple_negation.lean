let eval {P Q : Prop} (p : P) (h : P → Q) : Q := h p

let imp_double_neg {P : Prop} : P → ¬ ¬ P := eval

let contra_pos {P Q : Prop} : (P → Q) → (¬ Q → ¬ P) := fun pq nq ↦ nq ∘ pq

exact ⟨imp_double_neg, contra_pos imp_double_neg⟩
