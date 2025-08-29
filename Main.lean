import Example

/- 
- [ ] in Economics: [A Definition of Subjective Probability](https://www.jstor.org/stable/2991295)
- [ ] in Chaos: The butterfly effect, a key feature of deterministic chaos, describes how small differences in initial conditions lead to vastly different outcomes over time, making long-term prediction impossible even in deterministic systems.
- [ ] in Network Models: https://en.wikipedia.org/wiki/Braess'_paradox
-/

-- errs!
--#check fun x => [x]
--fun x => [x] : ?m.9 → List ?m.9

def main : IO Unit := do

  let stdout ← IO.getStdout

  stdout.putStrLn s!"{hello}'s Perfect Arithmetics Class has begun!"
  stdout.putStrLn s!"We are at M1: Foundations"
  stdout.putStrLn s!" - TODO: clean up the Main"
  stdout.putStrLn s!"Look at the Abstract Model of UTXO-based Cryptocurrencies with Scripts"
  stdout.putStrLn s!" - [ ] 1. A ledger is a list of valid transactions"
  stdout.putStrLn s!" - [ ] 2. The datatype for UTXO-based transactions is defined"
  stdout.putStrLn s!" - [ ] 3. The function tx : Input → Ledger → Option[UtxoTx]"
  stdout.putStrLn s!" - [ ] 4. The unspent outputs of a transaction can be computed by applying the following function:" 
  stdout.putStrLn s!" - [ ] so on till 8" 
