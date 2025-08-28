-- uncommenting this line causes an error
-- import Examples

#eval s!"The answer is {40 + 2}"
#eval s!"evaluates to {42 + 19}"
#eval if 3 == 4 then "equal" else "not equal"
#eval if 3 == 3 then 5 else 7
#eval s!"{String.append "A" (String.append "B" "C")}"
#eval s!"{String.append (String.append "A" "B") "C"}"

theorem bogus : False := by sorry

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

  let name := "Alex"

  stdout.putStrLn s!"{name}'s Perfect Arithmetics Class has begun!"
