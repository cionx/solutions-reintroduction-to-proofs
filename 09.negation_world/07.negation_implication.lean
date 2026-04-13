-- Solution 1.
have modus_ponens {P Q : Prop} : P → (P → Q) → Q := flip id

have syllogism {P Q R : Prop} : (P → Q) → (Q → R) → (P → R) := flip Function.comp

have modus_tollens {P Q : Prop} : (P → Q) → (¬ Q → ¬ P) := syllogism

exact And.uncurry (modus_tollens ∘ modus_ponens)

-- Solution 2.
intro ⟨p, nq⟩
exact fun h ↦ nq (h p)
