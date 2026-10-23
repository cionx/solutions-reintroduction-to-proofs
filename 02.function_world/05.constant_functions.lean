/-
example {A B : Type} (a : A) : B → A := by
-/



/- We will use the contant function that maps everything to a. -/

-- Solution 1.
intro b
exact a

-- Solution 2.
intro _
exact a

-- Solution 3.
exact fun b ↦ a

-- Solution 4.
exact fun _ ↦ a
