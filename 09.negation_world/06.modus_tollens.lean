let yoneda {P Q R : Prop} (h : P → Q) : (Q → R) → (P → R) := fun k ↦ k ∘ h

exact yoneda
