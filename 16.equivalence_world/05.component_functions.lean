constructor
· exact fun f ↦ ⟨Prod.fst ∘ f, Prod.snd ∘ f⟩
· exact fun ⟨f1, f2⟩ ↦ (fun x ↦ ⟨f1 x, f2 x⟩)
· intro f
  ext x
  · rfl
  · rfl
· intro ⟨f1, f2⟩
  rfl
