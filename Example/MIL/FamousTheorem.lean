def hello : String := "world"
/-
- [ ] find or implement a proof for a famous theorem
https://leanprover-community.github.io/mathematics_in_lean/C01_Introduction.html#getting-started
-/
theorem easy : 2 + 2 = 4 :=
  rfl

#check easy
-- def FermatLastTheorem :=
--   ∀ x y z n : ℕ, n > 2 ∧ x * y * z ≠ 0 → x ^ n + y ^ n ≠ z ^ n
-- theorem hard : FermatLastTheorem := sorry
-- 
-- #check hard
