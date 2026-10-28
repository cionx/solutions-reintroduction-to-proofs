/-
example {P Q R : Prop} : (P → Q) ∧ (P → R) ↔ P → Q ∧ R := by
-/



/- We use the same approach as for Prod.components. -/

let And.fst {P Q : Prop} : P ∧ Q → P := fun ⟨p, _⟩ ↦ p
let And.snd {P Q : Prop} : P ∧ Q → Q := fun ⟨_, q⟩ ↦ q

-- Solution 1.

constructor
· exact fun ⟨h1, h2⟩ ↦ (fun p ↦ ⟨h1 p, h2 p⟩)
· exact fun h ↦ ⟨And.fst ∘ h, And.snd ∘ h⟩

-- Solution 2.

constructor
· intro ⟨pq, pr⟩
  exact fun p ↦ ⟨pq p, pr p⟩
· intro pqr
  exact ⟨And.fst ∘ pqr, And.snd ∘ pqr⟩
