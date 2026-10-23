/-
example (P Q : Prop) (p : P) : Prop := by
-/



/- There are various possible solutions: we can use P, Q, True or False. -/

-- Solution 1.
exact P

-- Solution 2.
exact Q

-- Solution 3.
exact True

-- Solution 4.
exact False
