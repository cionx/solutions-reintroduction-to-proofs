/-
example {A B C : Type} (a : A) (f : A → B → C) : B → C := by
-/



/- We are going to use the value of f at a. -/

-- Solution 1.
exact f a

-- Solution 2.
apply f
exact a

-- Solution 3.
apply f
assumption
