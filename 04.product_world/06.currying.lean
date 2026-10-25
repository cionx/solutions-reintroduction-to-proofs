/-
example {A B C : Type} : (A × B → C) → (A → B → C) := by
-/



/- For a function f : A × B → C and elements a : A and b : B we can group together
   the two elements a and b into the pair ⟨a, b⟩ and then apply the function f. -/

-- Solution 1.
exact fun f ↦ (fun a b ↦ f ⟨a, b⟩)

-- Solution 2.
intro f
exact fun a b ↦ f ⟨a, b⟩

-- Solution 3.
exact fun f a b ↦ f ⟨a, b⟩
