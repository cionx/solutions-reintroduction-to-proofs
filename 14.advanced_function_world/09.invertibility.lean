have not_involutive : ∀ (b : Bool), not (not b) = b := by
  intro b
  cases b
    <;> rfl

use not
exact ⟨not_involutive, not_involutive⟩
