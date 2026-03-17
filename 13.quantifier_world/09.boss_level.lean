let neg_existence {A : Type} (P : A → Prop) : ¬ (∃ x : A, P x) ↔ ∀ x : A, ¬ P x := by
  constructor
  · intro hP
    intro x hx
    have hP' : ∃ x, P x := by
      use x
      exact hx
    exact hP hP'
  · intro hP
    intro ⟨x, hx⟩
    exact hP x hx

let double_neg {P : Prop} : P ↔ ¬ ¬ P := by
  constructor
  · exact flip id
  · exact Classical.byContradiction

let all_imp {A : Type} (P Q : A  → Prop) (hPQ : ∀ x, P x → Q x) : (∀ x, P x) → (∀ x, Q x) := by
  intro hP
  intro x
  exact (hPQ x) (hP x)

let all_double_neg {A : Type} (P : A → Prop) : (∀ x, P x) ↔ (∀ x, ¬ ¬ P x) := by
  constructor
  · intro h
    intro x
    exact double_neg.1 (h x)
  · intro h
    intro x
    exact double_neg.2 (h x)

intro hnP
rcases Classical.em (∃ x, ¬ P x) with h | hP
· exact h
· rw [neg_existence] at hP
  rw [← all_double_neg] at hP
  exact False.elim (hnP hP)
