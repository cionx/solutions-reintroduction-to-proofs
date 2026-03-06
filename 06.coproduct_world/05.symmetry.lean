/- Solution 1:
 - This solution currently doesn’t work since Sum.lift isn’t available,
 - even though it should be.
exact Sum.lift Sum.inr Sum.inl
-/

-- Solution 2:
intro x
rcases x with a | b
· exact Sum.inr a
· exact Sum.inl b
