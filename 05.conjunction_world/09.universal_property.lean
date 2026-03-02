let And.fst {p q : Prop} : p ∧ q → p := fun pq ↦ pq.1
let And.snd {p q : Prop} : p ∧ q → q := fun pq ↦ pq.2

constructor
· intro ⟨p_q, p_r⟩
  exact fun p ↦ ⟨p_q p, p_r p⟩
· intro p_qr
  exact ⟨And.fst ∘ p_qr, And.snd ∘ p_qr⟩
