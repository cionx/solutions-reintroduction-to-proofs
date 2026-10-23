/-
example {A B : Type} (x : A) (y z : B) : B := by
-/



/- There are two possible solutions: we can use either y or z. -/

-- Solution 1.
exact y

-- Solution 2.
exact z
