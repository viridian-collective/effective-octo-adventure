-- https://lean-lang.org/doc/reference/4.21.0-rc3///Introduction/#example-boxes

-- defining an inductive type for even numbers
inductive Even : Nat → Prop where -- constructor for even numbers
  | zero : Even 0 -- 0 is even
  | plusTwo : Even n → Even (n + 2) -- if n is even, then n + 2 is even

-- experimenting with eval:
#eval s!"The answer is {40 + 2}"
#eval s!"evaluates to {42 + 19}"
#eval if 3 == 4 then "equal" else "not equal"
#eval if 3 == 3 then 5 else 7
#eval s!"{String.append "A" (String.append "B" "C")}"
#eval s!"{String.append (String.append "A" "B") "C"}"

theorem bogus : False := by sorry
