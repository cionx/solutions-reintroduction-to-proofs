/- The first two terms, (!p || q) and (!q || p), are simultaneously satisfied
 - if and only if p and q are either both true or both false. For the last term
 - (p || q) to be also simultaneously satisfied, we need both p and q to be true.
 - For the expressions (!p || !r) and (!q || !r) to be satisfied we then also
 - need r to be false.
 -/

exact true  -- p
exact true  -- q
exact false -- r
rfl
