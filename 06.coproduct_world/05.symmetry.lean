let Sum.lift {A B C : Type} (f : A → C) (g : B → C) (x : A ⊕ B) : C := by
  rcases x with a | b
  · exact f a
  · exact g b

exact Sum.lift Sum.inr Sum.inl
