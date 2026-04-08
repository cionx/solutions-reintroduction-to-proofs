-- Solution 1.
exact fun p ↦ p.2

-- Solution 2.
exact fun ⟨a, b⟩ ↦ b

-- Solution 3.
exact fun ⟨_, b⟩ ↦ b

-- Solution 4.
intro p
exact p.2

-- Solution 5.
intro ⟨a, b⟩
exact b

-- Solution 6.
intro ⟨_, b⟩
exact b
