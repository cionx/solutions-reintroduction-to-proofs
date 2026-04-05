/- Idea:
 -
 - We want to generalize the distributive laws that hold for finite products and
 - sums to arbitrary products and sums. In other words, we want an isomorphism
 - between
 -   * a product of sums, and
 -   * a sum of products.
 - Here, a “product of sums” is of the form
 -   ∏ i ∈ I, ∑ j ∈ J(i), A(i,j) ,            (∗)
 - and we want the “sum of products” to be of the form
 -   ∑ ?????, ∏ ????????, A(?????) .
 -
 - For motivation we can consider the case in which I = {1, 2, 3, …}
 - (the nonzero natural numbers) and each J(i) also of the form {1, 2}:
 -
 -   i = 1      A(1,1)  A(1,2)
 -   i = 2      A(2,1)  A(2,2)
 -   i = 3      A(3,1)  A(3,2)
 -   i = 4      A(4,1)  A(4,2)
 -     ⋮           ⋮       ⋮
 -
 - To choose an element of the “product of sums” (∗), we will need to choose
 - for every row i one of the two sets/types A(i,1) and A(i,2), and then an
 - element of the choosen set A(i,j):
 -   for every i ∈ I, [ choose j ∈ J(i), choose a ∈ A(i,j) ]
 - We can reparenthesize the above line: we first choose a way of choosing for
 - every i ∈ I some j(i) ∈ J(i), and only afterwards choose for every i ∈ I
 - also some a ∈ A(i,j(i)):
 -   ∑ j ∈ (∏ i ∈ I, J(i)), ∏ i ∈ I, A(i,j) .
 -
 - Alternatively, to construct an element of (∗) in the above example, we need
 - to fill out the following table:
 -
 -   row (i ∈ I)   index (j ∈ J(i))  element (a ∈ A(i,j))
 -        1              ___                 ___
 -        2              ___                 ___
 -        3              ___                 ___
 -        4              ___                 ___
 -        ⋮               ⋮                   ⋮
 -
 - We can only choose a table entry once all previous entries in the same
 - row are already chosen — this reflects the fact that we are dealing with
 - dependent types. There are nevertheless two ways of filling out this table:
 - either row-by-row or column-by-column. The row-by-row approach corresponds
 - to
 -    ∏ i ∈ I, ∑ j ∈ J(i), A(i,j) ,
 - whereas the column-by-column approach corresponds to
     ∑ j ∈ (∏ i ∈ I, J(i)), ∏ i ∈ I, A(i,j) .
 -/

constructor
· intro choose_index_and_term
  constructor
  · exact fun a ↦ (choose_index_and_term a).1
  · exact fun a ↦ (choose_index_and_term a).2
· intro ⟨choose_index, choose_term⟩
  exact fun a ↦ ⟨choose_index a, choose_term a⟩
· intro choose_index_and_term
  rfl
· intro ⟨choose_index, choose_term⟩
  ext a
  · rfl
  · rfl
