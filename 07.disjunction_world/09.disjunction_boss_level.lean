intro t_u__vy
intro q__p__t
intro y__q__w
intro vw_xy__z
intro ⟨r__s__u, v__r__x⟩
intro ⟨p, q_r, s⟩

-- The only way of producing Z is through (V ∧ W) ∨ (X ∧ Y) → Z.
apply vw_xy__z
-- We thus need to produce either both V and W, or both X and Y.

/- Our starting points are P, S, and Q ∨ R. The only way of producing
 - something from only P and S are implications (e.g., Q → T through
 - partial application of Q → P → T), but none of the provided implications
 - take implications as input. So we need to also use Q ∨ R, and thus make
 - a case distinction.
 -/

rcases q_r with q | r
· let t := q__p__t q p
  let ⟨v, y⟩ := t_u__vy (Or.inl t)
  let w := y__q__w y q
  exact Or.inl ⟨v, w⟩
· let u := r__s__u r s
  let ⟨v, y⟩ := t_u__vy (Or.inr u)
  let x := v__r__x v r
  exact Or.inr ⟨x, y⟩
