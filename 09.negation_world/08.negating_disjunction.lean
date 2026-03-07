let And.lift {P Q R : Prop} (pq : P → Q) (pr : P → R) : P → Q ∧ R := fun p ↦ ⟨pq p, pr p⟩

let Or.lift {P Q R : Prop} (pr : P → R) (qr : Q → R) : P ∨ Q → R := by
  intro pq
  rcases pq with p | q
  · exact pr p
  · exact qr q

let swap_comp {P Q R : Prop} : (P → Q) → (Q → R) → (P → R) := fun h1 h2 ↦ h2 ∘ h1

let contrapos {P Q : Prop} : (P → Q) → (¬ Q → ¬ P) := swap_comp

constructor
· exand And.lift (contrapos Or.inl) (contrapos Or.inr)
· exact And.uncurry Or.lift
