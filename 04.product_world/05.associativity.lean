/-
example {A B C : Type} : (((A × B) × C) → (A × (B × C))) × ((A × (B × C)) → ((A × B) × C)) := by
-/



/- We shuffle the parentheses around. -/

-- Solution 1.
constructor
· exact fun ⟨⟨a, b⟩, c⟩ ↦ ⟨a, ⟨b, c⟩⟩
· exact fun ⟨a, ⟨b, c⟩⟩ ↦ ⟨⟨a, b⟩, c⟩

-- Solution 2.
constructor
· exact fun t ↦ ⟨t.1.1, ⟨t.1.2, t.2⟩⟩
· exact fun t ↦ ⟨⟨t.1, t.2.1⟩, t.2.2⟩
