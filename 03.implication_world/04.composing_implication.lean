-- Solution 1.
have q : Q := h1 p
have r : R := h2 q
exact r

-- Solution 2.
exact (h2 ∘ h1) p

-- Solution 3.
exact h2 (h1 p)

-- Solution 4.
apply h2
apply h1
exact p
