-- Solution 1.
exact fun ⟨p, q⟩ ↦ ⟨q, p⟩

-- Solution 2.
intro ⟨p, q⟩
exact ⟨q, p⟩

-- Solution 3.
intro pq
have p := pq.1
have q := pq.2
exact ⟨q, p⟩
