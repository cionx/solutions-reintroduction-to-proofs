-- Solution 1.
intro ⟨f, g⟩
exact fun x ↦ ⟨f x, g x⟩

-- Solution 2.
exact fun ⟨f, g⟩ x ↦ ⟨f x, g x⟩
