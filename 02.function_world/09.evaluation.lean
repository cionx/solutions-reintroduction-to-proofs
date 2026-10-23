/-
example {A B : Type} : A → (A → B) → B := by
-/



/- We want to evaluate the second argument at the first argument.
   There are two ways of doing this:
   - An explicit description: (a : A) and (f : A → B) are mapped to (f a : B).
   - Swapping the two arguments of the desired evaluation function
       ev : A → (A → B) → B
     gives a function
       (A → B) → A → B ,
     i.e., a function of type
       (A → B) → (A → B) .
     This function is exactly the identity function on the type A → B:
       id : (A → B) → (A → B) .
     We hence find that
       ev   ---- Function.swap --->   id (specialized at A → B).
     Since Function.swap is an involution, we consequently find that also
       ev   <--- Function.swap ----   id (specialized at A → B).
     We can thus construct the desired evaluation function as the swap of id. -/

-- Solution 1.
exact Function.swap id

-- Solution 2.
exact fun a f ↦ f a
