import Example

-- errs!
--#check fun x => [x]
--fun x => [x] : ?m.9 → List ?m.9

-- https://lean-lang.org/doc/reference/4.21.0-rc3///Introduction/#example-boxes
-- what does this even mean? 
inductive Even : Nat → Prop where
  | zero : Even 0
  | plusTwo : Even n → Even (n + 2)

def main : IO Unit := do

  let stdout ← IO.getStdout

  stdout.putStrLn s!"{hello}'s Perfect Arithmetics Class has begun!"
