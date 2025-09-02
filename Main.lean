import Example

def main : IO Unit := do

  let stdout ← IO.getStdout

  stdout.putStrLn s!"{hello}'s Perfect Arithmetics Class has begun!"
  stdout.putStrLn s!"We are at M1: Foundations"
  stdout.putStrLn s!"Look at the Abstract Model of UTXO-based Cryptocurrencies with Scripts"
  stdout.putStrLn s!" - [ ] 1. A ledger is a list of valid transactions"
  stdout.putStrLn s!" - [ ] 2. The datatype for UTXO-based transactions is defined"
  stdout.putStrLn s!" - [ ] 3. The function tx : Input → Ledger → Option[UtxoTx]"
  stdout.putStrLn s!" - [ ] 4. The unspent outputs of a transaction can be computed by applying the following function:" 
  stdout.putStrLn s!" - [ ] so on till 8" 
