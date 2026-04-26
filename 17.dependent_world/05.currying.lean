/- Non-dependent currying gives us an equivalence of types
 -   A × B → C  ≃  A → B → C ,
 - where the types A, B and C do not depend on one another.
 -
 - For a dependent version of this equivalence we allow each
 - of the types A, B and C to depend (in that order) on the
 - previous types. So B can depend on A, and C can depend on
 - both A and B.
 -/

-- Solution 1.

constructor
· intro f
  intro a b
  exact f ⟨a, b⟩
· intro g
  intro ⟨a, b⟩
  exact g a b
· intro f
  ext pair
  rfl
· intro g
  ext a b
  rfl

-- Solution 2.

constructor
· exact fun f a b ↦ f ⟨a, b⟩
· exact fun f ⟨a, b⟩ ↦ f a b
· exact fun _ ↦ rfl
· exact fun _ ↦ rfl
