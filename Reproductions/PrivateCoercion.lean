module

/--
error: Type mismatch
  instBEq._private_1
has type
  Prop
but is expected to have type
  Bool
-/
#guard_msgs in
public noncomputable instance instBEq {α : Type u} [LE α] [DecidableLE α] :
    BEq α where
  beq _ _ := private True

-- works because `True` is coerced into `decide True`
public noncomputable instance instBEq' {α : Type u} [LE α] [DecidableLE α] :
    BEq α where
  beq _ _ := True
