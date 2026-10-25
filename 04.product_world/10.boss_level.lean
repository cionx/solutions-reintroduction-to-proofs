/-
example {A B C D E M N X Y Z : Type} : (B × D → M) → (E → Y × N) → (A → M → X) → (C → N → Z) → (A × B × C × D × E → X × Y × Z) := by
-/



/- In terms of a diagram:

     A   B   C   D     E
     │   │    ╲ ╱      │
     │   │     ╳       │         swap C and D
     │   │    ╱ ╲      │
     A   B   D   C     E
     │   │   │   │     │
     │   └─┬─┘   │     │         B × D → M
     │     │     │     │
     A     M     C     E
     │     │     │     │
     └──┬──┘     │     │         A → M → X, curried to A × M → X
        │        │     │
        X        C     E
        │        │     │
        │        │   ┌─┴─┐       E → Y × N
        │        │   │   │
        X        C   Y   N
        │        │    ╲ ╱
        │        │     ╳         swap Y and N
        │        │    ╱ ╲
        X        C   N   Y
        │        │   │   │
        │        └─┬─┘   │       C → N → Z, curried to C × N → Z
        │          │     │
        X          Z     Y
        │           ╲   ╱
        │            ╲ ╱
        │             ╳          swap Z and Y
        │            ╱ ╲
        │           ╱   ╲
        X          Y     Z

-/

intro bd_m e_yn a_m_x c_n_z
intro ⟨a, b, c, d, e⟩
have m := bd_m ⟨b, d⟩
have x := a_m_x a m
have ⟨y, n⟩ := e_yn e
have z := c_n_z c n
exact ⟨x, y, z⟩
