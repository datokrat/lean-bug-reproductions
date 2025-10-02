module

public import Reproductions.A
import Reproductions.B

/--
info: @[expose] def x : X :=
{ }
-/
#guard_msgs in
#print x

@[expose]
public def aa := x.eq_1
