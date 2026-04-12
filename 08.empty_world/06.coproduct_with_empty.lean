have Sum.lift {A B T : Type} (f : A → T) (g : B → T) : A ⊕ B → T := by
  intro ab
  rcases ab with a | b
  · exact f a
  · exact g b

-- Solution 1.
constructor
· exact Sum.inl
· exact Sum.lift id Empty.elim

-- Solution 2.
exact ⟨Sum.inl, Sum.lift id Empty.elim⟩
