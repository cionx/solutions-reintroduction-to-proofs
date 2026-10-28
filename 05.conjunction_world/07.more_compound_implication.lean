/-
theorem And.uncurry {P Q R : Prop} (h : P → Q → R) : P ∧ Q → R := by
-/



/- We do the same as for uncurrying of functions. -/

-- Solution 1.
exact fun ⟨p, q⟩ ↦ h p q

-- Solution 2.
exact fun pq ↦ h pq.1 pq.2

-- Solution 3.
intro ⟨p, q⟩
exact h p q

-- Solution 4.
intro pq
have p := pq.1
have q := pq.2
exact h p q
