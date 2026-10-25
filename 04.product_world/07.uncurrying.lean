/-
example {A B C : Type} : (A → B → C) → (A × B → C) := by
-/



/- For a function f : A → B → C and a pair of elements ⟨a, b⟩ : A × B
   we can first apply f to a, and then apply the result to b. -/

-- Solution 1.
exact fun f ↦ (fun ⟨a, b⟩ ↦ f a b)

-- Solution 2.
intro f
exact fun ⟨a, b⟩ ↦ f a b

-- Solution 3.
intro f
exact fun p ↦ f p.1 p.2

-- Solution 4.
exact fun f ⟨a, b⟩ ↦ f a b
