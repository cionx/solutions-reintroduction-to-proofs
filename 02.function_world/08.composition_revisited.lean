-- Solution 1.
exact fun g f ↦ g ∘ f

-- Solution 2.
intro g f
intro a
exact g (f a)
