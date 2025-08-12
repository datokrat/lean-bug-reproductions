module

namespace X

public structure X

public instance : LE X where
  le _ _ := True

/--
error: failed to compile definition, compiler IR check failed at 'X.x._private_1._closed_0'. Error: depends on declaration 'Classical.propDecidable', which has no executable code; consider marking definition as 'noncomputable'
-/
#guard_msgs in
public noncomputable instance x : BEq X where
  beq a b := private haveI := Classical.propDecidable; a ≤ b ∧ b ≤ a

end X
