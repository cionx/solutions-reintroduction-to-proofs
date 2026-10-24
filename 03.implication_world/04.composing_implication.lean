/-
example {P Q R : Prop} (p : P) (h1 : P → Q) (h2 : Q → R) : R := by
-/



/- We can go from P to Q with h1 (either forwards or backwards),
   and also from Q to R (either forwards or backwards). -/

-- Solution 1.
have q : Q := h1 p
have r : R := h2 q
exact r

-- Solution 2.
have q : Q := h1 p
have r : R := h2 q
assumption

-- Solution 3.
exact h2 (h1 p)

-- Solution 4.
exact (h2 ∘ h1) p

-- Solution 5.
apply h2
apply h1
exact p

-- Solution 6.
apply h2
apply h1
assumption

-- Solution 7.
apply (h2 ∘ h1)
exact p

-- Solution 8.
apply (h2 ∘ h1)
assumption
