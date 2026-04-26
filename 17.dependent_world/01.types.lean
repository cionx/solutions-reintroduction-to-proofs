-- Solution 1.
intro b
match b with
| true  => exact Unit
| false => exact Empty
-- This dependent type has no dependent functions.

-- Solution 2.
intro b
match b with
| _ => exact Unit
-- This dependent type has a dependent function.
