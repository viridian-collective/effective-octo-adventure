import Example

#eval "Suzan Sto Helit is in the library reading the MIL book, C02_Basics"
-- https://leanprover-community.github.io/mathematics_in_lean/C02_Basics.html#calculating

-- We generally learn to carry out mathematical calculations without thinking of them as proofs. But when we justify each step in a calculation, as Lean requires us to do, the net result is a proof that the left-hand side of the calculation is equal to the right-hand side.

-- In Lean, stating a theorem is tantamount to stating a goal, namely, the goal of proving the theorem. Lean provides the rewriting tactic rw, to replace the left-hand side of an identity by the right-hand side in the goal. 
#eval "Here is an error to debug:" 
#eval "uncomment this block to see the error in CI or locally"
/-
example (a b c : ℝ) : a * b * c = b * (a * c) := by
  rw [mul_comm a b]
  rw [mul_assoc b a c]
-/
#eval "we got bedazzled! Lets run simpler code from C01_Introduction:"

-- Put simply, Lean is a tool for building complex expressions in a formal language known as dependent type theory.

#check 2 + 2

#eval "and we found another error" 
/-
-- Expression in the MIL book uses wrong notation:
def f (x : ℕ) :=
  x + 3

#check f
-/

#eval "went back to working code in TPIL to learn that def"
-- https://lean-lang.org/theorem_proving_in_lean4///find/?domain=Verso.Genre.Manual.section&name=types-as-objects
def α : Type := Nat
def β : Type := Bool
def F : Type → Type := List
def G : Type → Type → Type := Prod

#check α
#check F α
#check F Nat
#check G α
#check G α β
#check G α Nat

#eval "and fun are not the same"
#check fun (x : Nat) => x + 5-- λ and fun mean the same thing
#check λ (x : Nat) => x + 5


def main : IO Unit := do

  let stdout ← IO.getStdout

  stdout.putStrLn s!"{hello}'s Viridian is Present!"
  stdout.putStrLn s!"We are at M1: Foundations"
  stdout.putStrLn s!"I could look at the Abstract Model of UTXO-based Cryptocurrencies with Scripts"
  stdout.putStrLn s!"It's 500 lines of code! in Agda!"
  stdout.putStrLn s!"Or into modeling Braess Paradox in Lean"
  stdout.putStrLn s!"But I am scared, I will dive into the foundations first" 
  stdout.putStrLn s!"☐ refactor Main" 
  stdout.putStrLn s!"☐ keep goint through the MIL book" 
  stdout.putStrLn s!"☑" 
