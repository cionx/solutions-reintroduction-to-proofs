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
