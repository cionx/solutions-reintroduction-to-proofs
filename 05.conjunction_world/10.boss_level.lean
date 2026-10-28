/-
example {P Q R S T U V W X Y Z : Prop} : P → (R → S ∧ T) → (U → P → R) → ((U → Y) → Z) → (W ∧ T ∧ V → X ∧ Y) → (S → V ∧ W) → Z := by
-/



intro p
intro r_st u_p_r u_y___z wtv_xy s_vw

/- The current goal is Z. The only assumption involving this goal
   is (U → Y) → Z. Pulling back the goal Z along this assumption
   gives the new goal U → Y. -/

apply u_y___z

/- The goal U → Y is an implication, so we introduce its assumption U. -/

intro u

/- Finally, proceed as in the following diagram:

        U   P
        │   │
        ╰─┬─╯       use U → P → R curried to U ∧ P → R
          │
          R
          │
       ╭──┴──╮      use R → S ∧ T
       │     │
       S     T
       │     │
     ╭─┴─╮   │      use S → V ∧ W
     │   │   │
     V   W   T
     │   │   │
     ╰─╮ │   │
     ╭───╯   │
     │ ╰───╮ │      swap around
     │   ╭───╯
     │   │ ╰─╮
     │   │   │
     W   T   V
     │   │   │
     ╰─┬─┴─┬─╯      use W ∧ T ∧ V → X ∧ Y
       │   │
       X   Y
-/

have r := u_p_r u p
have ⟨s, t⟩ := r_st r
have ⟨v, w⟩ := s_vw s
have ⟨x, y⟩ := wtv_xy ⟨w, t, v⟩
exact y
