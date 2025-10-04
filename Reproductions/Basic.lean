module

import Reproductions.Dependency
import Reproductions.Dependency2

/--
error: (kernel) declaration type mismatch, '_private.Reproductions.Basic.0.f' has type
  0 = 0
but it is expected to have type
  x 0 = 0
-/
#guard_msgs in
theorem f : x 0 = 0 := by
  simp
