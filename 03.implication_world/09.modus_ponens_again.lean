/-
example {P Q : Prop} : P → (P → Q) → Q := by
-/



/- We can use the same tactics as for the function evaluation level in Function World,
   except that we don’t have access to an analogue of Function.swap for propositions. -/

-- Solution 1.
exact fun p h ↦ h p

-- Solution 2.
intro p h
exact h p
