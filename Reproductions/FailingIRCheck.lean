module

namespace X

public structure X

public instance : LE X where
  le _ _ := True

public noncomputable instance x : BEq X where
  beq a b := private haveI := Classical.propDecidable; a ≤ b ∧ b ≤ a

end X
