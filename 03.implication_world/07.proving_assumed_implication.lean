/-
example {P Q : Prop} (h : P → Q) : P → Q := by
-/



/- There are various ways of writing down essentially the same thing. -/

-- Solution 1.
exact h

-- Solution 2.
assumption

-- Solution 3.
intro p
exact h p

-- Solution 4.
intro p
apply h
exact p

-- Solution 5.
intro p
apply h
assumption
