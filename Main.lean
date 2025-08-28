-- import Examples

#eval s!"The answer is {40 + 2}"

theorem bogus : False := by sorry

-- errs!
--#check fun x => [x]
--fun x => [x] : ?m.9 → List ?m.9

-- https://lean-lang.org/doc/reference/4.21.0-rc3///Introduction/#example-boxes
-- this does nothing:
inductive Even : Nat → Prop where
  | zero : Even 0
  | plusTwo : Even n → Even (n + 2)

def main : IO Unit := do


  let stdout ← IO.getStdout

  let name := "Alex"

  stdout.putStrLn s!"{name}'s Perfect Arithmetics Class has begun!"
