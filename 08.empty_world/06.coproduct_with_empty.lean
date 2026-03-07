let Sum.lift {A B Z : Type} (f : A → Z) (g : B → Z) : A ⊕ B → Z := by
  intro ab
  rcases ab with a | b
  · exact f a
  · exact g b

constructor
· exact Sum.inl
· exact Sum.lift id Empty.elim
