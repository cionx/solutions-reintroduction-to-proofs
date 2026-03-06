-- Solution 1:
constructor
· intro ⟨a, bc⟩
  rcases bc with b | c
  · exact Sum.inl ⟨a, b⟩
  · exact Sum.inr ⟨a, c⟩
· intro abc
  rcases abc with ⟨a, b⟩ | ⟨a, c⟩
  · exact ⟨a, Sum.inl b⟩
  · exact ⟨a, Sum.inr c⟩

/- Solution 2:
 - This solution currently doesn’t work because Prod.lift and Sum.lift
 - aren’t available, even though they should be.

let Prod.funct {A B X Y : Type} (f : A → X) (g : B → Y) : A × B → X × Y :=
  Prod.lift (f ∘ Prod.fst) (g ∘ Prod.snd)

let Coprod.funct {A B X Y : Type} (f : A → X) (g : B → Y) : A ⊕ B → X ⊕ Y :=
  Sum.lift (Sum.inl ∘ f) (Sum.inr ∘ g)

let Prod.make {A B : Type} : A → B → A × B := Function.curry id

let Prod.diag {A : Type} : A → A × A := Prod.lift id id

let technical1 {A X Y Z : Type} (f : A → X) (g : A → Y) (φ : X → Y → Z) : A → Z :=
  (Function.uncurry φ) ∘ (Prod.funct f g ) ∘ Prod.diag

let technical2 {A X1 X2 Y1 Y2 : Type}
  (f : A → X1 → Y1) (g : A → X2 → Y2) : A → (X1 ⊕ X2 → Y1 ⊕ Y2) :=
  technical1 f g Coprod.funct

exact ⟨
  Function.uncurry (technical2 Prod.make Prod.make),
  Sum.lift (Prod.funct id Sum.inl) (Prod.funct id Sum.inr)
⟩
-/
