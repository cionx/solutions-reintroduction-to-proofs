-- Solution 1.
intro pq
rcases pq with p | q
· exact Or.inr p
· exact Or.inl q

-- Solution 1.
intro pq
rcases pq with p | q
· right
  exact p
· left
  exact q
