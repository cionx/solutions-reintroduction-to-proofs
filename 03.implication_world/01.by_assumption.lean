/-
example {P : Prop} (p : P) : P := by
-/



/- We can use the assumption p. -/

-- Solution 1.
exact p

-- Solution 2.
assumption
