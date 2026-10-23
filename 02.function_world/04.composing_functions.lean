/-
example {A B C : Type} (g : B → C) (f : A → B) : A → C := by
-/



/- We can just simply the functions f and g.
   There are various ways to express this idea. -/

-- Solution 1.
intro a
exact g (f a)

-- Solution 2.
intro a
apply g
apply f
assumption

-- Solution 3.
intro a
apply g ∘ f
assumption

-- Solution 4.
intro a
apply g
apply f
exact a

-- Solution 5.
intro a
apply g ∘ f
exact a

-- Solution 6.
exact fun a ↦ g (f a)

-- Solution 7.
exact g ∘ f
