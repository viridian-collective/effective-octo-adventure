import Examples

#eval s!"The answer is {2 + 2}"

theorem bogus : False := by sorry

def main : IO Unit :=
  IO.println s!"Hello, {hello}!"
