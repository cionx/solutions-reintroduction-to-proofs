/-
example {P Q R : Prop} : (P ∧ Q → R) ↔ (P → Q → R) := by
-/



/- We combine currying and uncurrying. -/

-- Solution 1.
exact ⟨And.curry, And.uncurry⟩

-- Solution 2.
constructor
· exact And.curry
· exact And.uncurry
