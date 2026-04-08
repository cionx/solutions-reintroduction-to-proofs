-- Solution 1.
exact fun p ↦ p.1

-- Solution 2.
exact fun ⟨a, b⟩ ↦ a

-- Solution 3.
exact fun ⟨a, _⟩ ↦ a

-- Solution 4.
intro p
exact p.1

-- Solution 5.
intro ⟨a, b⟩
exact a

-- Solution 6.
intro ⟨a, _⟩
exact a
