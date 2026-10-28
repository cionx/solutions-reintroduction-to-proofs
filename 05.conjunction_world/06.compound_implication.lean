/-
theorem And.curry {P Q R : Prop} (h : P ∧ Q → R) : P → Q → R := by
-/



/- We do the same as for currying of functions. -/

-- Solution 1.
exact fun p q ↦ h ⟨p, q⟩

-- Solution 2.
intro p q
exact h ⟨p, q⟩
