intro t'u_vy
intro q_p_t
intro y_q_w
intro vw'xy_z
intro ⟨r_s_u, v_r_x⟩
intro ⟨p, q'r, s⟩

-- The only way of producing Z is through (V ∧ W) ∨ (X ∧ Y) → Z.
apply vw'xy_z
-- We thus need to produce either both V and W, or both X and Y.

/- Our starting points are P, S, and Q ∨ R. The only way of producing
 - something from only P and S are implications (e.g., Q → T through
 - partial application of Q → P → T), but none of the provided implications
 - take implications as inpu, so we’d be stuck. So we need to also use Q ∨ R,
 - and thus make a case distinction.
 -/

rcases q'r with q | r
· have t := q_p_t q p
  have ⟨v, y⟩ := t'u_vy (Or.inl t)
  have w := y_q_w y q
  exact Or.inl ⟨v, w⟩
· have u := r_s_u r s
  have ⟨v, y⟩ := t'u_vy (Or.inr u)
  have x := v_r_x v r
  exact Or.inr ⟨x, y⟩
