intro false_eq_true

have all_eq {X : Type} (x y : X) : x = y := by
  let f : Bool → X := by
    intro b
    match b with
    | true  => exact y
    | false => exact x
  have hx : f true = y := rfl
  have hy : f false = x := rfl
  rw [← hx, ← hy]
  exact congrArg f false_eq_true

have False_eq_True : False = True := all_eq False True
rw [False_eq_True]
exact ⟨⟩
