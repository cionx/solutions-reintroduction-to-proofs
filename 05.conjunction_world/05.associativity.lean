/-
example {P Q R : Prop} : (P ∧ Q) ∧ R ↔ P ∧ (Q ∧ R) := by
-/



/- We regroup the componets p, q and r. -/

-- Solution 1.
constructor
· exact fun ⟨⟨p, q⟩, r⟩ ↦ ⟨p, ⟨q, r⟩⟩
· exact fun ⟨p, ⟨q, r⟩⟩ ↦ ⟨⟨p, q⟩, r⟩

-- Solution 2.
constructor
· exact fun t ↦ ⟨t.1.1, ⟨t.1.2, t.2⟩⟩
· exact fun t ↦ ⟨⟨t.1, t.2.1⟩, t.2.2⟩
