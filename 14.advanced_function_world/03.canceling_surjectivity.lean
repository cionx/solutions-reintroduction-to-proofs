intro c
have hc : ∃ x, (g ∘ f) x = c := gf_is_surj c
rcases hc with ⟨x, hx⟩
use f x
exact hx
