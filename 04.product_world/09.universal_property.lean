/-
example {X A B : Type} : (X → A) × (X → B) → (X → A × B) := by
-/



/- Given functions f : X → A and g : X → B, we can apply for every element
   x : X both f and g to x. This results in elements f x : A and g x : B,
   which can then be grouped together into the pair ⟨f x, g x⟩ : A × B. -/

-- Solution 1.
exact fun ⟨f, g⟩ ↦ (fun x ↦ ⟨f x, g x⟩)

-- Solution 2.
intro ⟨f, g⟩
exact fun x ↦ ⟨f x, g x⟩

-- Solution 3.
exact fun ⟨f, g⟩ x ↦ ⟨f x, g x⟩
