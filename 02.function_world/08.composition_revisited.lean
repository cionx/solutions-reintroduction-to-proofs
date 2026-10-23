/-
example {A B C : Type}: (B → C) → (A → B) → (A → C) := by
-/



/- We can use function composition. -/

-- Solution 1. (This shouldn’t work, but currently does.)
exact Function.comp

-- Solution 2.
exact fun g f ↦ g ∘ f

-- Solution 3.
exact fun g f a ↦ g (f a)

-- Solution 4.
intro g f
intro a
exact g (f a)
