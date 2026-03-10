let h1 (a : A) (b : B) : (h ∘ f) ⟨a, b⟩ = h (f ⟨a, b⟩) := rfl
let h2 (a : A) (b : B) : (k ∘ g) ⟨a, b⟩ = k (g ⟨a, b⟩) := rfl

rw[← h1]
rw[← h2]
rw[r]
rw[p]
rw[q]
rfl
