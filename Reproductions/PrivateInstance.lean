module

public class X

private instance : X where

/--
error: Unknown constant `_private.Reproductions.PrivateInstance.0.instX`

Note: A private declaration `instX` exists but is not accessible in the current context.
-/
#guard_msgs in
@[expose]
public def a [LE X] : X := inferInstance
