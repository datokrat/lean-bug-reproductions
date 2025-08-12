module

public noncomputable instance instBEq {α : Type u} [LE α] [DecidableLE α] :
    BEq α where
  beq a b := private (a ≤ b ∧ b ≤ a : Bool)

/--
error: unsolved goals
α : Type u
inst✝¹ : LE α
inst✝ : DecidableLE α
⊢ ∀ {a b : α}, instBEq._private_1 a b = true → a = b
-/
#guard_msgs(error, drop warning) in
public instance a {α : Type u} [LE α] [DecidableLE α] :
    LawfulBEq α where
  rfl := sorry
  eq_of_beq := by simp [BEq.beq]

/--
error: trying to realize `_private.Lean.Environment.0.Lean.Environment.RealizeConstKey` value but `enableRealizationsForConst` must be called for 'instBEq._private_1' first
---
error: unsolved goals
α : Type u
inst✝¹ : LE α
inst✝ : DecidableLE α
⊢ ∀ {a b : α}, instBEq._private_1 a b = true → a = b
-/
#guard_msgs(error, drop warning) in
public instance b {α : Type u} [LE α] [DecidableLE α] :
    LawfulBEq α where
  rfl := sorry
  eq_of_beq := by simp [BEq.beq, instBEq._private_1]
