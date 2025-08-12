module

namespace X

private instance instBEq {α : Type u} [LE α] :
    BEq α where
  beq _ _ := True

-- THIS IS FINE:
/--
error: failed to synthesize
  BEq α

Hint: Additional diagnostic information may be available using the `set_option diagnostics true` command.
-/
#guard_msgs in
public def a [LE X] : BEq α := inferInstance


-- THIS IS NOT FINE:
/--
error: Unknown constant `_private.Reproductions.PrivateInstance.0.X.instBEq`

Note: A private declaration `instBEq` exists but is not accessible in the current context.
-/
#guard_msgs in
public def b [LE X] : LawfulBEq α := sorry

end X
