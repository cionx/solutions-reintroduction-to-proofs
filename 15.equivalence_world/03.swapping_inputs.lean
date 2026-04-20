have flip_involutive {A B C : Type} : ∀ (f : A → B → C), flip (flip f) = f := by
  intro f
  ext a b
  rfl

constructor
· exact flip
· exact flip
· exact flip_involutive
· exact flip_involutive
