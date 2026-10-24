/-
example {P Q : Prop} (p : P) (h : P → Q) : Q := by
-/



/- We pull back the goal Q along the implication (h : P → Q) to the
   new goal P, which we then prove using the assumption (p : P). -/

-- Solution 1.
apply h
exact p

-- Solution 2.
apply h
assumption
