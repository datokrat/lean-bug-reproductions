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

public instance blabb [LE X] :
    LawfulBEq X := sorry

end X
