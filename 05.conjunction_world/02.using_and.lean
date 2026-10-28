/-
example {P Q : Prop} (h : P ∧ Q) : P ∧ Q := by
-/



/- We can either use the assumption h directly,
   or we can deconstruct h into proof of P and Q,
   and then assemble these proofs back into h. -/

-- Solution 1.
exact h

-- Solution 2.
assumption

-- Solution 3.
exact ⟨h.1, h.2⟩
