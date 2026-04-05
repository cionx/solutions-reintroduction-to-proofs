constructor
· intro f
  intro a b
  exact f ⟨a, b⟩
· intro g
  intro ⟨a, b⟩
  exact g a b
· intro f
  ext pair
  rfl
· intro g
  ext a b
  rfl
