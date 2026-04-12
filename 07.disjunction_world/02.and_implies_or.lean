-- Solution 1.
intro ⟨p, _⟩
left
exact p

-- Solution 2.
exact fun ⟨p, _⟩ ↦ Or.inl p

-- Solution 3.
intro ⟨_, q⟩
right
exact q

-- Solution 4.
exact fun ⟨_, q⟩ ↦ Or.inr q
