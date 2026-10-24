/-
example {P Q R S T U V W X Y Z : Prop} : (S → X) → (T → W) → (R → Y) → (W → Q) → (U → S) → (Y → T) → (X → V) → (Q → U) → (V → Z) → (P → R) → P → Z := by
-/



/- Combining the given steps
     S → X
     T → W
     R → Y
     W → Q
     U → S
     Y → T
     X → V
     Q → U
     V → Z
     P → R
   in the correct order gives the following overall sequence of implications:
     P → R → Y → T → W → Q → U → S → X → V → Z .
   We therefore only need to chain together the given implications in this way. -/

-- Solution 1.
intro sx tw ry wq us yt xv qu vz pr
intro p
have r := pr p
have y := ry r
have t := yt y
have w := tw t
have q := wq w
have u := qu q
have s := us u
have x := sx s
have v := xv x
have z := vz v
exact z

-- Solution 2.
exact fun sx tw ry wq us yt xv qu vz pr ↦ vz ∘ xv ∘ sx ∘ us ∘ qu ∘ wq ∘ tw ∘ yt ∘ ry ∘ pr
