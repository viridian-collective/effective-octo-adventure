import Example
import Mathlib

#eval "as the error in the book resolved magically, we assert that the Goals are Accoplished:"
example (a b c : ℝ) : a * b * c = b * (a * c) := by
  rw [mul_comm a b]
  rw [mul_assoc b a c]

#eval "continue on with the exercises:"
-- https://leanprover-community.github.io/learn.html

def main : IO Unit := do

  let stdout ← IO.getStdout

  stdout.putStrLn s!"Hello, {name}! Viridian Collective is {fifty}! Change your {hello} here"
  stdout.putStrLn s!"We are at M1:Foundations, Sprint 2: Advent, week 36"
