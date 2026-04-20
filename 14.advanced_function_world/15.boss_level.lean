have inv_via_ext {A B : Type}
(f : A → B) (g : B → A) : g ∘ f = id ↔ ∀ (a : A), g (f a) = a := by
  have unfold_comp : ∀ (a : A), (g ∘ f) a = g (f a) := by
    intro a
    rfl
  constructor
  · intro gf_eq_id
    intro a
    rw [← unfold_comp]
    rw [gf_eq_id]
    rfl
  · intro gfA_eq_A
    ext a
    rw [unfold_comp]
    rw [gfA_eq_A]
    rfl

constructor
· intro isomorphism
  let g := isomorphism.choose
  have hg : g ∘ f = id ∧ f ∘ g = id := isomorphism.choose_spec
  use g
  rw [← inv_via_ext, ← inv_via_ext]
  exact hg
· intro invertible
  let g := invertible.choose
  have hg : (∀ (a : A), g (f a) = a) ∧ (∀ (b : B), f (g b) = b) := invertible.choose_spec
  use g
  rw [inv_via_ext, inv_via_ext]
  exact hg

