intro c
have hc : ∃ a, (g ∘ f) a = c := gf_is_surj c
rcases hc with ⟨a, ha⟩
use f a
exact ha
