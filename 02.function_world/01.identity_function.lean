/-
example {A : Type} : A → A := by
-/



/- We will use the identity function. -/

-- Solution 1.
intro a
exact a

-- Solution 2.
exact fun a ↦ a
