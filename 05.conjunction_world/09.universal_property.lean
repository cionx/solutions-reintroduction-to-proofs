let And.fst {P Q : Prop} : P ∧ Q → P := fun ⟨p, _⟩ ↦ p
let And.snd {P Q : Prop} : P ∧ Q → Q := fun ⟨_, q⟩ ↦ q

constructor
· intro ⟨pq, pr⟩
  exact fun p ↦ ⟨pq p, pr p⟩
· intro pqr
  exact ⟨And.fst ∘ pqr, And.snd ∘ pqr⟩
