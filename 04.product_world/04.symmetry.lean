-- First solution:
exact fun p ↦ ⟨p.2, p.1⟩

/- Second solution:
 - This solution doesn’t work at the moment, since Prod.lift isn’t available,
 - even though it should be.
exact Prod.lift Prod.snd Prod.fst
-/
