· intro b1 b2
  match b1, b2 with
  | true, true => exact true
  | _, _ => exact false

· exact ⟨rfl, rfl, rfl, rfl⟩
