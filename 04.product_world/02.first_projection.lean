/-
example {A B : Type} : A × B → A := by
-/



/- There are various ways to express the projection onto the first coordinate. -/

-- Solution 1.
exact fun ⟨a, _⟩ ↦ a

-- Solution 2.
exact fun ⟨a, b⟩ ↦ a

-- Solution 3.
exact fun p ↦ p.1

-- Solution 4.
intro ⟨a, _⟩
exact a

-- Solution 5.
intro ⟨a, b⟩
exact a

-- Solution 6.
intro p
exact p.1
