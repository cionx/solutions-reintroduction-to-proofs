/-
example {P Q : Prop} (p : P) (q : Q) : P ∧ Q := by
-/



/- We group together the proofs of P and Q into a proof of P ∧ Q. -/

-- Solution 1.
constructor
· exact p
· exact q

-- Solution 2.
exact ⟨p, q⟩
