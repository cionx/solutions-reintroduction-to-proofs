let pred (n : ℕ) :=
  match n with
  | zero   => 0
  | succ k => k

use pred
constructor
· rfl
· intro n
  rfl
