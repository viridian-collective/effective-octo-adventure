import Example

def main : IO Unit := do

  let stdout ← IO.getStdout

  stdout.putStrLn s!"{fifty}, Viridian is Present!"
  stdout.putStrLn s!"We are at M1: Foundations"
  stdout.putStrLn s!"I could look at the Abstract Model of UTXO-based Cryptocurrencies with Scripts"
  stdout.putStrLn s!"It's 500 lines of code! in Agda!"
  stdout.putStrLn s!"Or into modeling Braess Paradox in Lean"
  stdout.putStrLn s!"But I am scared, I will dive into the foundations first" 
  stdout.putStrLn s!"☑ refactor" 
  stdout.putStrLn s!"☐ keep goint through the MIL book" 
  stdout.putStrLn s!"☑" 
