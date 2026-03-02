intro p α β γ δ ε

apply γ

intro u
let r := β u p
let ⟨s, t⟩ := α r
let ⟨v, w⟩ := ε s
let ⟨x, y⟩ := δ ⟨w, t, v⟩
exact y
