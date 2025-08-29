import Example

/- 
- [ ] [The Schröder-Bernstein Theorem](https://leanprover-community.github.io/mathematics_in_lean/C04_Sets_and_Functions.html#the-schroder-bernstein-theorem) 
- [ ] in Economics: [A Definition of Subjective Probability](https://www.jstor.org/stable/2991295)
- [ ] in Chaos: The butterfly effect, a key feature of deterministic chaos, describes how small differences in initial conditions lead to vastly different outcomes over time, making long-term prediction impossible even in deterministic systems.
- [ ] in Network Models: https://en.wikipedia.org/wiki/Braess'_paradox

  -/

-- errs!
--#check fun x => [x]
--fun x => [x] : ?m.9 → List ?m.9

-- what does this even mean? 
inductive Even : Nat → Prop where
  | zero : Even 0
  | plusTwo : Even n → Even (n + 2)

def main : IO Unit := do

  let stdout ← IO.getStdout

  stdout.putStrLn s!"{hello}'s Perfect Arithmetics Class has begun!"
