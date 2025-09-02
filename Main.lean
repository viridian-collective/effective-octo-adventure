import Example

-- https://leanprover-community.github.io/mathematics_in_lean/C02_Basics.html#calculating

-- We generally learn to carry out mathematical calculations without thinking of them as proofs. But when we justify each step in a calculation, as Lean requires us to do, the net result is a proof that the left-hand side of the calculation is equal to the right-hand side.

-- In Lean, stating a theorem is tantamount to stating a goal, namely, the goal of proving the theorem. Lean provides the rewriting tactic rw, to replace the left-hand side of an identity by the right-hand side in the goal. 

#eval "Hello, World!"

-- Put simply, Lean is a tool for building complex expressions in a formal language known as dependent type theory.

#check 2 + 2

-- def f (x : ℕ) :=
--   x + 3
-- 
-- #check f


def main : IO Unit := do

  let stdout ← IO.getStdout

  stdout.putStrLn s!"{hello}'s Viridian is Present!"
  stdout.putStrLn s!"We are at M1: Foundations"
  stdout.putStrLn s!"Look at the Abstract Model of UTXO-based Cryptocurrencies with Scripts"
  stdout.putStrLn s!"It's 500 lines of code! in Agda!"
  stdout.putStrLn s!"I am scared, I will dive into the foundations of Lean first" 
  -- stdout.putStrLn s!"Here is an error to debug: {f 7}" 
  stdout.putStrLn s!"✅" 
