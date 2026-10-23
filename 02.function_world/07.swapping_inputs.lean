/-
example {A B C : Type} : (A → B → C) → (B → A → C) := by
-/



/- We can flip around the order of the two inputs. -/

-- Solution 1.
intro f
exact fun b a ↦ f a b

-- Solution 2.
intro f
intro b a
exact f a b

-- Solution 3.
exact fun f ↦ (fun b a ↦ f a b)
