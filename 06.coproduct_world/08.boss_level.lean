-- Solution 1.
/- This solution doesn’t work because Prod.lift and Sum.lift are not available,
 - even though they should be.
 -/
constructor
· intro f
  exact ⟨
    Prod.fst ∘ f ∘ Sum.inl,
    Prod.fst ∘ f ∘ Sum.inr,
    Prod.snd ∘ f ∘ Sum.inl,
    Prod.snd ∘ f ∘ Sum.inr
  ⟩
· intro ⟨α, β, γ, δ⟩
  exact Prod.lift (Sum.lift α β) (Sum.lift γ δ)



-- Solution 2.
constructor
· intro f
  exact ⟨
    Prod.fst ∘ f ∘ Sum.inl,
    Prod.fst ∘ f ∘ Sum.inr,
    Prod.snd ∘ f ∘ Sum.inl,
    Prod.snd ∘ f ∘ Sum.inr
  ⟩
· intro ⟨α, β, γ, δ⟩
  intro ab
  rcases ab with a | b
  · exact ⟨α a, γ a⟩
  · exact ⟨β b, δ b⟩
