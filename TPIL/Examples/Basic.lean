def hello := "world"

-- here is a theorem:
example : 2 + 2 = 4 := by rfl -- rfl is a tactic that proves goals of the form a = b by checking if a and b are definitionally equal

-- here is a more complex theorem:
example (g : Nat → Nat → Nat)
        (h₁ : ∀ x, x ≠ 0 → g x x = 1) -- h₁ is a hypothesis that states that for any natural number x, if x is not equal to 0, then g x x equals 1
        (h₂ : x ≠ 0) -- h₂ is a hypothesis that states that x is not equal to 0
      -- the goal is to prove that g x x + x equals 1 + x
        : g x x + x = 1 + x := by
  conv => --conv is a tactic, allows the user to perform targeted rewriting on a goal or hypothesis, by focusing on particular subexpressions.
    lhs
    -- ⊢ g x x + x
    arg 1
    -- ⊢ g x x
    rw [h₁]
    -- 2 goals: ⊢ 1, ⊢ x ≠ 0
    . skip
    . tactic =>
      exact h₂

--what property of multiplication is being used here? Associativity or commutativity?
--it is commutativity, because we are changing the order of b and c
#guard_msgs (drop all) in --why does it fail without this line?
example (a b c : Nat) : a * (b * c) = a * (c * b) := by
  rw [Nat.mul_comm]

example (a b c : Nat) : a * (b * c) = a * (c * b) := by
  conv =>
    lhs
    congr
    rfl
    rw [Nat.mul_comm]
