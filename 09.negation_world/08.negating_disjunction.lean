have syllogism {P Q R : Prop} : (P → Q) → (Q → R) → (P → R) := flip Function.comp

have And.lift {P Q R : Prop} : (P → Q) → (P → R) → (P → Q ∧ R) :=
  fun h1 h2 ↦ (fun p ↦ ⟨h1 p, h2 p⟩)

have Or.lift {P Q R : Prop} : (P → R) → (Q → R) → P ∨ Q → R := by
  intro h1 h2 pq
  rcases pq with p | q
  · exact h1 p
  · exact h2 q

have Or.components {P Q R : Prop} : (P ∨ Q → R) → (P → R) ∧ (Q → R) :=
  And.lift (syllogism Or.inl) (syllogism Or.inr)

exact ⟨Or.components, And.uncurry Or.lift⟩
