-- Solution 1.
exact fun f ↦ Empty.elim ∘ f

-- Solution 2.
intro f a
apply Empty.elim
exact f a
