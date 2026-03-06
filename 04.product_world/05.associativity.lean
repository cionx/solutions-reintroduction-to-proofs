-- Solution 1:
constructor
· exact fun t ↦ ⟨t.1.1, ⟨t.1.2, t.2⟩⟩
· exact fun t ↦ ⟨⟨t.1, t.2.1⟩, t.2.2⟩

/- Solution 2:
 - This solution doesn’t work at the moment, since Prod.lift isn’t available,
 - even though it should be.
constructor
· exact Prod.lift
    (Prod.fst ∘ Prod.fst)
    (Prod.lift (Prod.snd ∘ Prod.fst) Prod.snd)
· exact Prod.lift
    (Prod.lift Prod.fst (Prod.fst ∘ Prod.snd))
    (Prod.snd ∘ Prod.snd)
-/
