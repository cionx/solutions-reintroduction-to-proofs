let Prod.lift {A X Y : Type} (f : A → X) (g : A → Y) : A → X × Y := fun a ↦ ⟨f a, g a⟩

let Coprod.lift {A B X : Type} (f : A → X) (g : B → X) : A ⊕ B → X := by
  intro x
  rcases x with a | b
  · exact f a
  · exact g b

constructor
· intro f
  exact ⟨
    Prod.fst ∘ f ∘ Sum.inl,
    Prod.fst ∘ f ∘ Sum.inr,
    Prod.snd ∘ f ∘ Sum.inl,
    Prod.snd ∘ f ∘ Sum.inr
  ⟩
· intro ⟨α, β, γ, δ⟩
  exact Prod.lift (Coprod.lift α β) (Coprod.lift γ δ)
