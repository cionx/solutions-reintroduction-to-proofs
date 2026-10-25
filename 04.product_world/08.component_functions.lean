/-
example {X A B : Type} : (X → A × B) → (X → A) × (X → B) := by
-/


/- We can compose any function f : X → A × B with the two canonical projection
   functions A × B → A and A × B → B to get functions of types X → A and X → B,
   respectively, which can then be combined into a pair of type (X → A) × (X → B). -/

-- Solution 1.
exact fun f ↦ ⟨Prod.fst ∘ f, Prod.snd ∘ f⟩

-- Solution 2.
intro f
constructor
· exact fun x ↦ (f x).1
· exact fun x ↦ (f x).2
