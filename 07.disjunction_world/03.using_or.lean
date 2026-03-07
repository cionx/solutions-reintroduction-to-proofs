intro pq
rcases pq with p | q
· exact Or.inr p
· exact Or.inl q
