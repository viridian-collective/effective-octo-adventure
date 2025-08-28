2. **Import Necessary Modules**: Depending on the theorem, you might need to import modules like `Data.Bool`, `Data.Nat`, or `Data.List` for basic types, or use `Mathlib` for more advanced mathematical structures.
3. **State the Theorem**: Use the `theorem` keyword followed by the statement of your theorem. For example, `theorem impl_equiv (P Q : Prop) : (P → Q) ↔ (¬P ∨ Q)`.
4. **Construct the Proof**: Use tactics like `rw` for rewriting, `intros` for introducing assumptions, `apply` for applying lemmas or theorems, and `constructor` for constructing proofs of existential statements.
5. **Use Existing Lemmas**: Lean and Mathlib provide many pre-proved lemmas. Use them to simplify your proofs.
6. **Check the Proof**: Lean will tell you if your proof is incomplete or incorrect. Pay attention to error messages to correct your proof.

Simple Theorems to Prove as Exercise

1. **Basic Propositional Logic**:
   - Prove that `P → Q` is equivalent to `¬P ∨ Q` (implication equivalence).
   - Prove the distributive property: `P ∧ (Q ∨ R)` is equivalent to `(P ∧ Q) ∨ (P ∧ R)`.

2. **Basic Arithmetic**:
   - Prove that addition is commutative: `a + b = b + a`.
   - Prove that multiplication is distributive over addition: `a * (b + c) = a * b + a * c`.

3. **Equality and Substitution**:
   - Prove the reflexive, symmetric, and transitive properties of equality.
   - Show that equality allows for substitution: if `a = b`, then `P(a)` implies `P(b)`.

4. **Basic Set Theory**:
   - Prove that the union of two sets is commutative and associative.
   - Show that the intersection of two sets is commutative and associative.

5. **Functional Properties**:
   - Prove that function composition is associative.
   - Show that if `f` is injective and `f(a) = f(b)`, then `a = b`.

6. **Predicate Logic**:
   - Prove the quantifier negation rules: `¬∀x.P(x)` is equivalent to `∃x.¬P(x)`, and `¬∃x.P(x)` is equivalent to `∀x.¬P(x)`.

