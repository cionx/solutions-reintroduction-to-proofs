-- Solution 1:
constructor
· intro x
  rcases x with (a | b) | c
  · exact Sum.inl a
  · exact Sum.inr (Sum.inl b)
  · exact Sum.inr (Sum.inr c)
· intro x
  rcases x with a | (b | c)
  · exact Sum.inl (Sum.inl a)
  · exact Sum.inl (Sum.inr b)
  · exact Sum.inr c

/- Solution 2:
 - This solution doesn’t currenty work because Sum.lift isn’t available,
 - even though it should be.
exact ⟨
  Sum.lift
    (Sum.lift Sum.inl (Sum.inr ∘ Sum.inl))
    (Sum.inr ∘ Sum.inr),
  Sum.lift
    (Sum.inl ∘ Sum.inl)
    (Sum.lift (Sum.inr ∘ Sum.inl) Sum.inr)
⟩
-/
