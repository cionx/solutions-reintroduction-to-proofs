intro c
rcases g_is_surj c with ⟨b, hb⟩
rcases f_is_surj b with ⟨a, ha⟩
use a
have h : (g ∘ f) a = g (f a) := rfl
rw [h, ha, hb]
rfl
