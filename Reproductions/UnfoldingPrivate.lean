module

public noncomputable instance instBEq {α : Type u} [LE α] [DecidableLE α] :
    BEq α where
  beq _ _ := private true

/--
error: Type mismatch
  True.intro
has type
  True
but is expected to have type
  instBEq._private_1 = true
-/
#guard_msgs in
private theorem eq_of_beq [LE α] [DecidableLE α] (a b : α) : a == b := by
  simp only [BEq.beq]
  exact True.intro

/--
error: trying to realize `_private.Lean.Environment.0.Lean.Environment.RealizeConstKey` value but `enableRealizationsForConst` must be called for 'instBEq._private_1' first
---
error: unsolved goals
α : Type u_1
inst✝¹ : LE α
inst✝ : DecidableLE α
a b : α
⊢ instBEq._private_1 = true
-/
#guard_msgs in
private theorem eq_of_beq' [LE α] [DecidableLE α] (a b : α) : a == b := by
  simp only [BEq.beq, instBEq._private_1]
