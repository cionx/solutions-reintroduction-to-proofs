/-
example {P Q : Prop} : P ∧ Q ↔ Q ∧ P := by
-/



/- We use And.symm for both directions. -/

-- Solution 1.
exact ⟨And.symm, And.symm⟩

-- Solution 2.
constructor
· exact And.symm
· exact And.symm
