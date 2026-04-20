let g (b : B) := by
  let a := (surj b).choose
  exact a

have hg : ∀ (b : B), f (g b) = b := by
  intro b
  exact (surj b).choose_spec

use g
constructor
· intro a
  apply inj
  exact hg (f a)
· exact hg
