import Example

/-
- [ ] find or implement a proof for a famous theorem
https://leanprover-community.github.io/mathematics_in_lean/C01_Introduction.html#getting-started
-/
theorem easy : 2 + 2 = 4 :=
  rfl

#check easy
def FermatLastTheorem :=
  ∀ x y z n : ℕ, n > 2 ∧ x * y * z ≠ 0 → x ^ n + y ^ n ≠ z ^ n
theorem hard : FermatLastTheorem := sorry

#check hard
/- 
- [ ] [The Schröder-Bernstein Theorem](https://leanprover-community.github.io/mathematics_in_lean/C04_Sets_and_Functions.html#the-schroder-bernstein-theorem) 
- [ ] in Economics: [A Definition of Subjective Probability](https://www.jstor.org/stable/2991295)
- [ ] in Chaos: The butterfly effect, a key feature of deterministic chaos, describes how small differences in initial conditions lead to vastly different outcomes over time, making long-term prediction impossible even in deterministic systems.
- [ ] in Network Models: https://en.wikipedia.org/wiki/Braess'_paradox


## Module 300: Innovate
- [eUTXO](https://iohk.io/en/research/library/papers/the-extended-utxo-model/) in lean
- eUTXO as a component of a socio-economic system
- WNF "critical juncture" as a phase transition in a socio-economic system 
- blockchain transactions and state of ledger as datapoints for validating theories around economic and other kinds of institutions

## Module 400: Connect
- [x] [zulip](https://leanprover.zulipchat.com/)
  - [ ] introduce yourself
- [ ] Office hours
  - [ ] write email,
  - [ ] attend 
- [ ] active projects
  - [ ] Cardano.org
  - [ ] andamio.io
  - [ ] [FLT](https://github.com/ImperialCollegeLondon/FLT)
  - [ ] nix scaffold
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
