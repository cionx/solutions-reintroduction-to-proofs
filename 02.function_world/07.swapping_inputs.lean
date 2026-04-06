-- Solution 1.
intro f
exact fun b a ↦ f a b

-- Solution 2.
intro f
intro b a
exact f a b

-- Solution 3.
exact fun f ↦ (fun b a ↦ f a b)
