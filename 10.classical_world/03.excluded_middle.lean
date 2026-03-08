let And.distributive_imp {P Q R S : Prop} :
(P ∨ Q) ∧ (R ∨ S) → (P ∧ R) ∨ (P ∧ S) ∨ (Q ∧ R) ∨ (Q ∧ S) := by
  intro ⟨pq, rs⟩
  rcases pq with p | q
  · rcases rs with r | s
    · left; exact ⟨p, r⟩
    · right; left; exact ⟨p, s⟩
  · rcases rs with r | s
    · right; right; left; exact ⟨q, r⟩
    · right; right; right; exact ⟨q, s⟩

exact And.distributive_imp ⟨Classical.em P, Classical.em Q⟩
