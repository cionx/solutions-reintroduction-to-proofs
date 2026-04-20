intro n
induction n with k hk
· left
  use 0
  rfl
· rcases hk with k_even | k_odd
  · let l : ℕ := k_even.choose
    let hl : k = 2 * l := k_even.choose_spec
    right
    use l
    rw [hl]
    rfl
  · let l : ℕ := k_odd.choose
    let hl : k = 2 * l + 1 := k_odd.choose_spec
    left
    use (l + 1)
    rw [hl]
    rfl
