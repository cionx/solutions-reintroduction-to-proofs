/-
example {A B : Type} (a : A) (b : B) : A × B := by
-/



/- We group together the two elements a : A and b : B into the pair ⟨a, b⟩ : A × B. -/

-- Solution 1.
exact ⟨a, b⟩

-- Solution 2.
constructor
· exact a
· exact b
