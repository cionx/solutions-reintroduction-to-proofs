let Sum.lift {A B T : Type} (f : A → T) (g : B → T) : A ⊕ B → T := by
  intro ab
  rcases ab with a | b
  · exact f a
  · exact g b

let Prod.lift {A X Y : Type} (f : A → X) (g : A → Y) : A → X × Y := by
  exact fun a ↦ ⟨f a, g a⟩

-- Solution 1.
constructor
· exact Sum.lift Empty.elim (Prod.lift id id)
· exact Sum.inr ∘ Prod.fst

-- Solution 2.
exact ⟨Sum.lift Empty.elim (Prod.lift id id), Sum.inr ∘ Prod.fst⟩
