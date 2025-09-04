-- declare new constant to test imports in Main
def fifty : String := "fifty"
#eval "Student Learning Target: resolve a program error"

#eval "Suzan Sto Helit is in the library reading the MIL book, C02_Basics"
-- https://leanprover-community.github.io/mathematics_in_lean/C02_Basics.html#calculating

-- We generally learn to carry out mathematical calculations without thinking of them as proofs. But when we justify each step in a calculation, as Lean requires us to do, the net result is a proof that the left-hand side of the calculation is equal to the right-hand side.

-- In Lean, stating a theorem is tantamount to stating a goal, namely, the goal of proving the theorem. Lean provides the rewriting tactic rw, to replace the left-hand side of an identity by the right-hand side in the goal. 
#eval "Code from the book results in error!" 
#eval "uncomment this block to see the error in CI or locally"

-- example (a b c : ℝ) : a * b * c = b * (a * c) := by
--   rw [mul_comm a b]
--   rw [mul_assoc b a c]


#eval "we got bedazzled! Lets run simpler code from C01_Introduction:"

-- Put simply, Lean is a tool for building complex expressions in a formal language known as dependent type theory.

#check 2 + 2

#eval "and we found that it fails with the same error!" 
/-
-- Expression in the MIL book uses wrong notation:
def f (x : ℕ) :=
  x + 3

#check f
-/

#eval "went back to working code in TPIL CH2.2"
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

#eval "which we were able to resolve using code from TPIL CH2.2"
#check fun (x : Nat) => x + 5-- λ and fun mean the same thing
#check λ (x : Nat) => x + 5

#eval "but we are still confused: the error is gone but its not like we understood the general aproach to resolving the error on L14:16"
#eval "with some luck looking for similar working bits we found this exact error resolved in FPIL 7.3.1"
-- https://lean-lang.org/functional_programming_in_lean/Programming-with-Dependent-Types/Worked-Example___-Typed-Queries/#Functional-Programming-in-Lean--Programming-with-Dependent-Types--Worked-Example___-Typed-Queries

-- This section describes an encoding of a subset of relational algebra in Lean using indexed families, as a simpler demonstration of techniques that can be used to build a more powerful database query language.

-- This subset uses the type system to enforce requirements such as disjointness of field names, and it uses type-level computation to reflect the schema into the types of values that are returned from a query. 

-- In this relational algebra, the base data that can be held in columns can have types Int, String, and Bool and are described by the universe DBType:
inductive DBType where
  | int | string | bool

abbrev DBType.asType : DBType → Type
  | .int => Int
  | .string => String
  | .bool => Bool

-- Using DBType.asType allows these codes to be used for types. For example:
#eval ("Mount Hood" : DBType.string.asType)

-- It is possible to compare the values described by any of the three database types for equality. Explaining this to Lean, however, requires a bit of work. Simply using BEq directly fails:
-- N.B. with the same error as the error that blocks our progress.

-- def DBType.beq (t : DBType) (x y : t.asType) : Bool :=
--   x == y

-- Just as in the nested pairs universe, type class search doesn't automatically check each possibility for t's value The solution is to use pattern matching to refine the types of x and y:

def DBType.beq (t : DBType) (x y : t.asType) : Bool :=
  match t with
  | .int => x == y
  | .string => x == y
  | .bool => x == y

-- In this version of the function, x and y have types Int, String, and Bool in the three respective cases, and these types all have BEq instances. The definition of DBType.beq can be used to define a BEq instance for the types that are coded for by DBType:

instance {t : DBType} : BEq t.asType where
  beq := t.beq

-- This is not the same as an instance for the codes:
instance {t : DBType} : Repr t.asType where
  reprPrec :=
    match t with
    | .int => reprPrec
    | .string => reprPrec
    | .bool => reprPrec

-- A Repr instance can be written using the same technique. The method of the Repr class is called reprPrec because it is designed to take things like operator precedence into account when displaying values. Refining the type through dependent pattern matching allows the reprPrec methods from the Repr instances for Int, String, and Bool to be used:

instance {t : DBType} : Repr t.asType where
  reprPrec :=
    match t with
    | .int => reprPrec
    | .string => reprPrec
    | .bool => reprPrec

#eval "and finally we noticed import statement in the text of the book!"
#eval "For the sake of brevity, my arse"
#eval "-[ ] import Matlib"


