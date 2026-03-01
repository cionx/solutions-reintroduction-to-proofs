-- Solution 1:
exact (h2 ∘ h1) p

/- Solution2:
exact h2 (h1 p)
-/

/- Solution 3:
have q : Q := h1 p
have r : R := h2 q
exact r
-/
