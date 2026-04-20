constructor
· exact Sum.components
· exact Function.uncurry Sum.lift
· intro f
  ext ab
  rcases ab with a | b
    <;> rfl
· intro ⟨f1, f2⟩
  rfl
