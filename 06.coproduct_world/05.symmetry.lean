-- Solution 1.
have Sum.lift := Sum.elim
exact Sum.lift Sum.inr Sum.inl

-- Solution 2.
intro x
rcases x with a | b
· exact Sum.inr a
· exact Sum.inl b
