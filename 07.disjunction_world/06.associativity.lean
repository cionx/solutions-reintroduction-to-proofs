-- Solution 1.
constructor
· intro pqr
  rcases pqr with (p | q) | r
  · left; exact p
  · right; left; exact q
  · right; right; exact r
· intro pqr
  rcases pqr with p | (q | r)
  · left; left; exact p
  · left; right; exact q
  · right; exact r

-- Solution 2.
constructor
· intro pqr
  rcases pqr with (p | q) | r
  · exact Or.inl p
  · exact Or.inr (Or.inl q)
  · exact Or.inr (Or.inr r)
· intro pqr
  rcases pqr with p | (q | r)
  · exact Or.inl (Or.inl p)
  · exact Or.inl (Or.inr q)
  · exact Or.inr r

-- Solution 3.
have Or.lift {P Q R : Prop} (h1 : P → R) (h2 : Q → R) : P ∨ Q → R := by
  intro pq
  rcases pq with p | q
  · exact h1 p
  · exact h2 q

exact ⟨
  Or.lift
    (Or.lift Or.inl (Or.inr ∘ Or.inl))
    (Or.inr ∘ Or.inr),
  Or.lift
    (Or.inl ∘ Or.inl)
    (Or.lift (Or.inl ∘ Or.inr) Or.inr)
⟩
