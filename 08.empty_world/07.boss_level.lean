let Sum.lift {A B Z : Type} (f : A → Z) (g : B → Z) : A ⊕ B → Z := by
  intro ab
  rcases ab with a | b
  · exact f a
  · exact g b

let Prod.lift {A X Y : Type} (f : A → X) (g : A → Y) : A → X × Y := by
  exact fun a ↦ ⟨f a, g a⟩

constructor
· exact Sum.lift Empty.elim (Prod.lift id id)
· exact Sum.inr ∘ Prod.fst
