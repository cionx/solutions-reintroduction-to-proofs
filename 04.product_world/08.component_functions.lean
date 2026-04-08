-- Solution 1.
exact fun f ↦ ⟨Prod.fst ∘ f, Prod.snd ∘ f⟩

-- Solution 2.
intro f
constructor
· exact fun x ↦ (f x).1
· exact fun x ↦ (f x).2
