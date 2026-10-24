/-
example {P : Prop} : P → P := by
-/



/- We can use the same approaches as for the identity function.
   We can, in fact, use the identity function. -/

-- Solution 1.
exact fun p ↦ p

-- Solution 2.
intro p
exact p

-- Solution 3.
intro p
assumption

-- Solution 4.
exact id
