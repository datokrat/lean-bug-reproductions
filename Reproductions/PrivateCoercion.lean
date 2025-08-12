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
public instance instBEq {α : Type u} [LE α] [DecidableLE α] :
    BEq α where
  beq _ _ := private True

-- works because `True` is coerced into `decide True`
public instance instBEq' {α : Type u} [LE α] [DecidableLE α] :
    BEq α where
  beq _ _ := True

public class X where
  a : Int

public instance a : X where
  a := private (0 : Nat)
