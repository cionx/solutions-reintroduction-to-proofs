intro b1 b2
match b1, b2 with
| false, false => exact false
| _,     _     => exact true

exact ⟨rfl, rfl, rfl, rfl⟩
