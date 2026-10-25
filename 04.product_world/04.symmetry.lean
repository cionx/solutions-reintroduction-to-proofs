/-
example {A B : Type} : A × B → B × A := by
-/



/- We swap around the two entries. -/

-- Solution 1.
exact fun ⟨a, b⟩ ↦ ⟨b, a⟩

-- Solution 2.
exact fun p ↦ ⟨p.2, p.1⟩
