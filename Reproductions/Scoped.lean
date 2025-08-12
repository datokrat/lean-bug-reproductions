module

prelude
public import Init.Prelude
public import Init.Core
import Init.Classical

namespace X
open Classical

public scoped instance (priority := low) instBEq {α : Type u} [LE α] :
    BEq α where
  beq _ _ := True

/--
error: Unknown constant `Classical.propDecidable`

Note: A private declaration `propDecidable` exists but is not accessible in the current context.
-/
#guard_msgs in
public instance [LE X] :
    LawfulBEq X := sorry

end X
