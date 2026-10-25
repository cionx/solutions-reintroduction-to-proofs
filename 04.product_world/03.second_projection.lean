/-
example {A B : Type} : A × B → B := by
-/



/- There are various ways to express the projection onto the second coordinate. -/

-- Solution 1.
exact fun ⟨_, b⟩ ↦ b

-- Solution 2.
exact fun ⟨a, b⟩ ↦ b

-- Solution 3.
exact fun p ↦ p.2

-- Solution 4.
intro ⟨_, b⟩
exact b

-- Solution 5.
intro ⟨a, b⟩
exact b

-- Solution 6.
intro p
exact p.2
