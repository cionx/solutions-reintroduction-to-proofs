-- Solution 1.
intro p np
exfalso
exact np p

-- Solution 2.
intro p np
exact False.elim (np p)
