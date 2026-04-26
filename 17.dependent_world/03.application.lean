intro σ
intro a
exact (f a) (σ a)

/- Remark:
 - This is the functoriality of the product. If we have an index set A
 - and two sets of families (B_α)_{α ∈ A} and (C_α)_{α ∈ A}, and for
 - every index α ∈ A a function f_α : B_α → C_α, then we get an induced
 - function between products,
 -   ∏_α f_α : ∏_α B_α → ∏_α C_α .
 -/
