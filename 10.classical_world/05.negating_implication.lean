let And.lift {P Q R : Prop} : (P → Q) → (P → R) → (P → Q ∧ R) := by
  intro pq pr
  exact fun p ↦ ⟨pq p, pr p⟩

let contrapos {P Q : Prop} : (P → Q) → (¬ Q → ¬ P) := flip Function.comp

let const_imp {P Q : Prop} (q : Q) : P → Q := fun _ ↦ q

let absurd {P Q : Prop} (p : P) (np : ¬ P) : Q := False.elim (np p)

let technical {P Q : Prop} : (P → ¬ ¬ Q) → (P → Q) := Function.comp byContradiction

apply And.uncurry And.lift
constructor
· apply technical
  apply contrapos
  exact flip absurd
· apply contrapos
  exact const_imp
