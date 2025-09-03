import Example

#eval "with exercise in C02 failing in the same way as in C01"
#eval "I set out to change to another dimension and look out why this could be the case and found a working bit of code here:"
-- https://lean-lang.org/theorem_proving_in_lean4/////Propositions-and-Proofs/#working-with-propositions-as-types
set_option linter.unusedVariables false
variable {p : Prop}
variable {q : Prop}
theorem t1 : p → q → p := fun hp : p => fun hq : q => hp

#print t1
-- but what is the point? I thought to myself
-- now I need to find a working example of `example`
#eval "which lead me to find something better: description of the error in FPIL, 7.31."
-- https://lean-lang.org/functional_programming_in_lean/Programming-with-Dependent-Types/Worked-Example___-Typed-Queries/#Functional-Programming-in-Lean--Programming-with-Dependent-Types--Worked-Example___-Typed-Queries

inductive DBType where
  | int | string | bool

abbrev DBType.asType : DBType → Type
  | .int => Int
  | .string => String
  | .bool => Bool
-- Using DBType.asType allows these codes to be used for types. For example:

#eval ("Mount Hood" : DBType.string.asType)

-- It is possible to compare the values described by any of the three database types for equality. Explaining this to Lean, however, requires a bit of work. Simply using BEq directly fails:

-- def DBType.beq (t : DBType) (x y : t.asType) : Bool :=
--   x == y

def DBType.beq (t : DBType) (x y : t.asType) : Bool :=
  match t with
  | .int => x == y
  | .string => x == y
  | .bool => x == y

instance {t : DBType} : Repr t.asType where
  reprPrec :=
    match t with
    | .int => reprPrec
    | .string => reprPrec
    | .bool => reprPrec

def main : IO Unit := do

  let stdout ← IO.getStdout

  stdout.putStrLn s!"Hello, {hello}"
  stdout.putStrLn s!"Viridian Collective is {fifty}"
  stdout.putStrLn s!"Change your {name} here"
  stdout.putStrLn s!"We are at M1: Advent"
  stdout.putStrLn s!"I could look at the Abstract Model of UTXO-based Cryptocurrencies with Scripts"
  stdout.putStrLn s!"It's 500 lines of code! in Agda!"
  stdout.putStrLn s!"Or into modeling Braess Paradox in Lean"
  stdout.putStrLn s!"But I am scared, I will dive into the foundations first" 
  stdout.putStrLn s!"☑ refactor" 
  stdout.putStrLn s!"☐ keep goint through the MIL book" 
  stdout.putStrLn s!"☑" 
