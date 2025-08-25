def main : IO Unit := do
  let stdin ← IO.getStdin
  let stdout ← IO.getStdout

  -- comments in lean start with --
  -- 2. **Import Necessary Modules**: Depending on the theorem, you might need to import modules like `Data.Bool`, `Data.Nat`, or `Data.List` for basic types, or use `Mathlib` for more advanced mathematical structures.

  -- 3. **State the Theorem**: Use the `theorem` keyword followed by the statement of your theorem. For example, `theorem impl_equiv (P Q : Prop) : (P → Q) ↔ (¬P ∨ Q)`.
  -- 4. **Construct the Proof**: Use tactics like `rw` for rewriting, `intros` for introducing assumptions, `apply` for applying lemmas or theorems, and `constructor` for constructing proofs of existential statements.
  -- 5. **Use Existing Lemmas**: Lean and Mathlib provide many pre-proved lemmas. Use them to simplify your proofs.
  -- 6. **Check the Proof**: Lean will tell you if your proof is incomplete or incorrect. Pay attention to error messages to correct your proof.

  stdout.putStrLn "How would you like to be addressed?"
  let input ← stdin.getLine
  let name := input.dropRightWhile Char.isWhitespace

  stdout.putStrLn s!"Hello, {name}!"
