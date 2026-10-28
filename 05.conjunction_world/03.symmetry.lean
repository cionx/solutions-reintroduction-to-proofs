/-
example {P Q : Prop} : P ∧ Q → Q ∧ P := by
-/



/- We swap around the two components. -/

-- Solution 1.
exact fun ⟨p, q⟩ ↦ ⟨q, p⟩

-- Solution 2.
exact fun h ↦ ⟨h.2, h.1⟩

-- Solution 3.
intro ⟨p, q⟩
exact ⟨q, p⟩

-- Solution 4.
intro h
exact ⟨h.2, h.1⟩

-- Solution 5.
intro h
have p := h.1
have q := h.2
exact ⟨q, p⟩
