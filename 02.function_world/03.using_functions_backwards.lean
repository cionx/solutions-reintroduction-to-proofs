/-
example {A B : Type} (a : A) (f : A → B) : B := by
-/



/- We pull back the goal B along the function (f : A → B) to the new goal A,
   and then use the provided element (a : A) to solve this new goal. -/

-- Solution 1.
apply f
assumption

-- Solution 2.
apply f
exact a
