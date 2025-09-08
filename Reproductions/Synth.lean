module

public import Reproductions.Basic
import Reproductions.X

/--
error: Unknown constant `instX`

Note: A private declaration `instX` exists but is not accessible in the current context.
-/
#guard_msgs in
public instance : X := inferInstance
