-- Solution 1.
constructor
· intro ⟨a, b_c⟩
  rcases b_c with b | c
  · exact Sum.inl ⟨a, b⟩
  · exact Sum.inr ⟨a, c⟩
· intro ab_ac
  rcases ab_ac with ⟨a, b⟩ | ⟨a, c⟩
  · exact ⟨a, Sum.inl b⟩
  · exact ⟨a, Sum.inr c⟩

-- Solution 2.
/-
 - This solution doesn’t work because Prod.lift and Sum.lift aren’t available,
 - even though they should be.
 -/

have Prod.funct {A B X Y : Type} (f : A → X) (g : B → Y) : A × B → X × Y :=
  Prod.lift (f ∘ Prod.fst) (g ∘ Prod.snd)

have Coprod.funct {A B X Y : Type} (f : A → X) (g : B → Y) : A ⊕ B → X ⊕ Y :=
  Sum.lift (Sum.inl ∘ f) (Sum.inr ∘ g)

have Prod.make {A B : Type} : A → B → A × B := Function.curry id

have Prod.diag {A : Type} : A → A × A := Prod.lift id id

have technical1 {A X Y Z : Type} (f : A → X) (g : A → Y) (φ : X → Y → Z) : A → Z :=
  (Function.uncurry φ) ∘ (Prod.funct f g ) ∘ Prod.diag

have technical2 {A X1 X2 Y1 Y2 : Type}
  (f : A → X1 → Y1) (g : A → X2 → Y2) : A → (X1 ⊕ X2 → Y1 ⊕ Y2) :=
  technical1 f g Coprod.funct

exact ⟨
  Function.uncurry (technical2 Prod.make Prod.make),
  Sum.lift (Prod.funct id Sum.inl) (Prod.funct id Sum.inr)
⟩

/- Note that in a general category 𝒞 we have a canonical morphism of the form
 -    (A × B) + (A × C) → A × (B + C) .
 - This canonical morphism is typically not an isomorphism, as can be seen by
 - considering the category of finite-dimensional vector spaces.
 -
 - If 𝒞 has internal homs, then this morphism in an isomorphism. The idea here
 - is that for every object B of 𝒞 the functor (–) × B has a left-adjoint,
 - namely B → (–), and therefore preserves sums. Consequently, A × (–) also
 - preserves sums for every object A of 𝒞.
 -/
