/-
example {P Q : Prop} (p : P) (h : P → Q) : Q := by
-/



/- We transform the proof (p : P) into a proof of Q
   using the implication (h : P → Q). -/

exact h p
