/-
example {P Q : Prop} (p : P) : Q → P := by
-/



/- We can use the same approaches as for constant functions. -/

-- Solution 1.
intro q
exact p

-- Solution 2.
intro _
exact p

-- Solution 3.
exact fun q ↦ p

-- Solution 4.
exact fun _ ↦ p
