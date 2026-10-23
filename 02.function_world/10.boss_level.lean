/-
example {F V : Type} : ((((V → F) → F) → F) → F) → ((V → F) → F) := by
-/



-- Solution 1.

/- We just `introduce` and `apply` until we reach the goal. -/

-- The goal is a function type, so we introduce an element of its input type.
intro α
-- The new goal is again a function type, so we again introduce an element of its input type.
intro β
-- We need to (eventually) produce an element of type F. Both α and β produce F,
-- so we can now either apply α or apply β. But β takes inputs of type V, and we
-- neither have nor will have a way of producing elements of type V. We therefore
-- decide to apply α instead of β.
apply α
-- The new goal is a function type, so we introduce an element of its input type.
intro γ
-- Finally, we have elements γ : (V → F) → F and β : V → F, and need an element of type F.
-- So we can just apply γ to β.
exact γ β



-- Solution 2.

/- Alternatively, we can think in terms of linear algebra.

   We need to produce a linear map from the quadruple dual space V^**** into the double dual space V^**.
   But a linear into a dual space U → W^* is always the same as a bilinear map (U, W) → F.
   We thus need to produce a bilinear map between V^**** and V^*.

   We can use canonical embedding of a vector space W into its double dual W^**.
   This allows us to embedd V^* first into V^*** and then further into V^*****.
   The quintruple dual space V^***** is the dual-space of the quadruple dual V^****, so these can just be
   combined in the usual way.

   (More generally, we can always combine W^(*n) and W^(*m) whenever n and m have different parities.
   On a theoretical level, we can define for every vector space W its “evenly-iterated dual”
     W^(*even)
   as the colimit of the sequence of canonical embeddings
     W  →  W^**  →  W^****  →  W^******  →  ⋯ ,
   and its “oddly-iterated dual” W^(*odd) as the colimit of the sequence of canonical embeddings
     W^*  →  W^***  →  W^*****  →  W^*******  →  ⋯ .
   We then have a non-degenerate bilinear pairing between W^(even) and W^(odd), induced by the natural pairing
   between a vector space and its dual.)

   Together with the `have` tactic (which hasn’t been introduced yet), we could express this solution as follows: -/

have canonical_double_dual {W F : Type} : W → ((W → F) → F) := Function.swap id

intro dddd -- Element of the quadruple dual.
intro d -- Element of the double dual.
exact ((canonical_double_dual ∘ canonical_double_dual) d) dddd
