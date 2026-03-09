let eval {P Q : Prop} : P → (P → Q) → Q := flip id

let imp_double_neg {P : Prop} : P → ¬ ¬ P := eval

let yoneda_co {P Q R : Prop} : (Q → R) → ((P → Q) → (P → R)) :=
  Function.comp

let yoneda_contra {P Q R : Prop} : (P → Q) → ((Q → R) → (P → R)) :=
  flip Function.comp

let contrapos {P Q : Prop} : (P → Q) → (¬ Q → ¬ P) :=
  yoneda_contra

let technical {P Q : Prop} : (P → ¬ ¬ Q) → (P → Q) :=
  yoneda_co byContradiction

let or_imp' {P Q R : Prop} : ((P ∨ Q) → R) ↔ (P → R) ∧ (Q → R) := by
  constructor
  · exact fun h ↦ ⟨h ∘ Or.inl, h ∘ Or.inr⟩
  · intro ⟨pr, qr⟩
    intro p_q
    rcases p_q with p | q
    · exact pr p
    · exact qr q

let or_neg {P Q : Prop} : ¬ (P ∨ Q) ↔ (¬ P) ∧ (¬ Q) := or_imp'

let and_imp' {P Q R S : Prop} : (P → R) → (Q → S) → (P ∧ Q → R ∧ S) := by
  intro pr qs
  exact fun ⟨p, q⟩ ↦ ⟨pr p, qs q⟩

apply technical
apply contrapos
exact (and_imp' byContradiction byContradiction) ∘ or_neg.1
