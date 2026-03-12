intro false_eq_true

let P (x : Bool) :=
  match x with
  | true => True
  | false => False

have False_eq_True : False = True := congrArg P false_eq_true

let bad : True → False := by
  rw [False_eq_True]
  exact id

exact bad ⟨⟩
