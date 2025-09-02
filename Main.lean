import Example

def main : IO Unit := do

  let stdout ← IO.getStdout

  stdout.putStrLn s!"{hello}'s Viridian is Present!"
  stdout.putStrLn s!"We are at M1: Foundations"
  stdout.putStrLn s!"Look at the Abstract Model of UTXO-based Cryptocurrencies with Scripts"
  stdout.putStrLn s!"It's 500 lines of code! in Agda!"
  stdout.putStrLn s!"I am scared, I will dive into the foundations of Lean first" 
  stdout.putStrLn s!"🦄" 
