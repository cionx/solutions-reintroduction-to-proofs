constructor
· -- The function Unit ⊕ Unit → Bool
  intro x
  rcases x with u1 | u2
  · exact true
  · exact false
· -- The function Bool → Unit ⊕ Unit
  intro b
  match b with
  | true  => exact Sum.inl ()
  | false => exact Sum.inr ()
· -- Showing that  Unit ⊕ Unit → Bool → Unit ⊕ Unit  is the identity.
  intro u
  rcases u with u1 | u2
    <;> rfl
· -- Showing that  Bool → Unit ⊕ Unit → Bool  is the identity.
  intro b
  match b with
  | true  => rfl
  | false => rfl
