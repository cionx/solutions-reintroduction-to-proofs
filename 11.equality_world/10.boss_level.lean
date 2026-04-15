have comp_unfold {X Y Z : Type} (g : Y → Z) (f : X → Y) (x : X)
: (g ∘ f) x = g (f x) :=
  rfl

rw[← comp_unfold h f, ← comp_unfold k g]
rw[r]
rw[p, q]
rfl
