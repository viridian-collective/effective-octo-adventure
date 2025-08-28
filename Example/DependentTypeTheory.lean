/- Any text between /- and -/ constitutes a comment block that is ignored by Lean. -/

/- “Type theory” gets its name from the fact that every expression has an associated type. For example, in a given context, x + 0 may denote a natural number and f may denote a function on the natural numbers. For those who like precise definitions, a Lean natural number is an arbitrary-precision unsigned integer.-/

/- Define some constants. -/

def m : Nat := 1       -- m is a natural number
def n : Nat := 0
def b1 : Bool := true  -- b1 is a Boolean
def b2 : Bool := false

/- The def keyword declares new constant symbols into the working environment. In the example above, def m : Nat := 1 defines a new constant m of type Nat whose value is 1. The #check command asks Lean to report their types; in Lean, auxiliary commands that query the system for information typically begin with the hash (#) symbol. The #eval command asks Lean to evaluate the given expression. You should try declaring some constants and type checking some expressions on your own. Declaring new objects in this manner is a good way to experiment with the system. -/

/- Check their types. -/

#check m
#check n
#check n + 0
#check m * (n + 0)
#check b1-- "&&" is the Boolean and
#check b1 && b2-- Boolean or
#check b1 || b2-- Boolean "true"
#check true/- Evaluate -/

/- eval is used to evaluate expressions. 
https://lean-lang.org/doc/reference/4.21.0-rc3///Interacting-with-Lean/#hash-eval
-/

#eval 5 * 4
#eval m + 2
#eval b1 && b2

/- What makes simple type theory powerful is that you can build new types out of others. 
For example, if a and b are types, 
a -> b denotes the type of functions from a to b, and 
a × b denotes the type of pairs consisting of an element of a paired with an element of b, also known as the Cartesian product. 
Note that × is a Unicode symbol. The judicious use of Unicode improves legibility, and all modern editors have great support for it. In the Lean standard library, you often see Greek letters to denote types, and the Unicode symbol → as a more compact version of ->. -/

#check Nat → Nat -- the type of functions from Nat to Nat
#check Nat -> Nat -- same as above
#check Nat × Nat -- the type of pairs of natural numbers
#check Prod Nat Nat -- same as above, Prod is the name of the type constructor
#check Nat → Nat → Nat -- the type of functions that take two natural numbers and return a natural number
#check Nat → (Nat → Nat) -- same as above, parentheses are optional
#check Nat × Nat → Nat  -- the type of functions that take a pair of natural numbers and return a natural number
#check (Nat → Nat) → Nat -- the type of functions that take a function from Nat to Nat and return a natural number
