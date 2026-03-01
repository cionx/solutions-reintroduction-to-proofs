/- In terms of a diagram:

A   B   C   D   E
|   |    \ /    |
|   |     X     |           swap C and D
|   |    / \    |
A   B   D   C   E
|    \ /    |   |
|     |     |   |           B × D → M
|     |     |   |
A     M     C   E
 \   /      |   |
  \ /       |   |           A → M → X, curried to A × M → X
   |        |   |
   X        C   E
   |        |   |\
   |        |   | \         E → Y × N
   |        |   |  \
   X        C   Y   N
   |        |    \ /
   |        |     X         swap Y and N
   |        |    / \
   X        C   N   Y
   |         \ /    |
   |          |     |       C → N → Z, curried to C × N → Z
   |          |     |
   X          Z     Y
   |           \   /
   |            \ /
   |             X          swap Z and Y
   |            / \
   |           /   \
   X          Y     Z

-/

intro α β γ δ
intro ⟨a, b, c, d, e⟩
let m := α ⟨b, d⟩
let x := γ a m
let ⟨y, n⟩ := β e
let z := δ c n
exact ⟨x, y, z⟩
