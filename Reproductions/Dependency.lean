module

@[simp]
public def x (n : Nat) := match n with
  | 0 => 0
  | n + 1 => n
