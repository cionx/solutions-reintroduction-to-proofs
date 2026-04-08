-- Solution 1.
intro f
exact fun p ↦ f p.1 p.2

-- Solution 2.
intro f
exact fun ⟨a, b⟩ ↦ f a b

-- Solution 3.
exact fun f ⟨a, b⟩ ↦ f a b
