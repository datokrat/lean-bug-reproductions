module

public class X

instance : X := sorry

/-- error: a private declaration `instX` has already been declared -/
#guard_msgs in
public instance : X := sorry

/-- error: private declaration `instX` has already been declared -/
#guard_msgs in
instance : X := sorry
