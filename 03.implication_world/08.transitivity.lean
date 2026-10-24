/-
example {P Q R : Prop} : (P → Q) → (Q → R) → (P → R) := by
-/



/- This is basically just function composition again. -/

-- Solution 1.
exact fun pq qr ↦ qr ∘ pq

-- Solution 2.
intro pq qr
intro p
exact qr (pq p)

-- Solution 3.
intro pq qr
intro p
exact (qr ∘ pq) p
