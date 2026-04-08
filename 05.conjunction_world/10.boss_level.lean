intro p
intro α β γ δ ε

apply γ

intro u
have r := β u p
have ⟨s, t⟩ := α r
have ⟨v, w⟩ := ε s
have ⟨x, y⟩ := δ ⟨w, t, v⟩
exact y
