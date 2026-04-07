-- Solution 1.
exact fun pq qr ↦ qr ∘ pq

-- Solution 2.
intro pq qr
intro p
exact qr (pq p)
