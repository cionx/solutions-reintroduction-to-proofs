-- Solution 1.
constructor
· exact fun t ↦ ⟨t.1.1, ⟨t.1.2, t.2⟩⟩
· exact fun t ↦ ⟨⟨t.1, t.2.1⟩, t.2.2⟩

-- Solution 2.
constructor
· exact fun ⟨⟨p, q⟩, r⟩ ↦ ⟨p, ⟨q, r⟩⟩
· exact fun ⟨p, ⟨q, r⟩⟩ ↦ ⟨⟨p, q⟩, r⟩
