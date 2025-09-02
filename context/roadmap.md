we are working on a project learning lean to model economic theories with eUTXO model. 
We present Extended UTXO (EUTXO), an extension to Bitcoin’s UTXO model that supports a substantially more expressive form of validation scripts, including scripts that implement general state machines and enforce invariants across entire transaction chains.

To demonstrate the power of this model, we also introduce a form of state machines suitable for execution on a ledger, based on Mealy machines and called Constraint Emitting Machines (CEM). We formalise CEMs, show how to compile them to EUTXO, and show a weak bisimulation between the two systems. All of our work is formalised using the Agda proof assistant.

Bitcoin, the most widely known and most valuable cryptocurrency, uses a graphbased ledger model built on the concept of UTXOs (unspent transaction outputs) [2,17]. Individual transactions consist of a list of inputs and a list of outputs, where outputs represent a specific value (of a cryptocurrency) that is available to be spent by inputs of subsequent transactions. Each output can be spent by (i.e., connect to) exactly one input. Moreover, we don’t admit cycles in these connections, and hence we can regard a collection of transactions spending from each other as a directed acyclic graph, where a transaction with m inputs and n outputs is represented by a node in the graph with m edges in and n edges out. The sum of the values consumed by a transaction’s inputs must equal the sum of the values provided by its outputs, thus value is conserved.

Whether an output can be consumed by an input is determined by a function ν attached to the output, which we call the output’s validator. A transaction input proves its eligibility to spent an output by providing a redeemer object ρ, such that ν(ρ) = true; redeemers are often called witnesses in Bitcoin. In the simplest case, the redeemer is a cryptographic hash of the spending transaction signed by an authorised spender’s private key, which is checked by the validator, which embeds the corresponding public key. More sophisticated protocols are possible by using more complex validator functions and redeemers — see [3] for a high-level model of what is possible with the functionality provided by Bitcoin. The benefit of this graph-based approach to a cryptocurrency ledger is that it plays well with the concurrent and distributed nature of blockchains. In particular, it forgoes any notion of shared mutable state, which is known to lead to highly complex semantics in the face of concurrent and distributed computations involving that shared mutable state.

We provide formalisations of both the EUTXO model and Constraint Emitting Machines. We prove a weak bisimulation between the two using the Agda proof assistant3.

Example: [https://github.com/omelkonian/formal-utxo/](https://github.com/omelkonian/formal-utxo/)
Useful: [https://datatracker.ietf.org/doc/html/rfc7049](https://datatracker.ietf.org/doc/html/rfc7049)

Help me plan the project. 
I want to build milestones towards describing Institutional Economics and Complexity Economics. What I need is deliverables, acceptance criteria and evidence of completion.
One milestone is modelling modern economic theories: The Origins of Wealth, The Resilient Society, The Precariat, Why Nations Fail. 

For reference here is table of contents for the Mathematics in Lean book; the project description could link stepping stones and components of models to the chapters of the book.
1. Introduction
1.1. Getting Started
1.2. Overview
2. Basics
2.1. Calculating
2.2. Proving Identities in Algebraic Structures
2.3. Using Theorems and Lemmas
2.4. More examples using apply and rw
2.5. Proving Facts about Algebraic Structures
3. Logic
3.1. Implication and the Universal Quantifier
3.2. The Existential Quantifier
3.3. Negation
3.4. Conjunction and Iff
3.5. Disjunction
3.6. Sequences and Convergence
4. Sets and Functions
4.1. Sets
4.2. Functions
4.3. The Schröder-Bernstein Theorem
5. Elementary Number Theory
5.1. Irrational Roots
5.2. Induction and Recursion
5.3. Infinitely Many Primes
5.4. More Induction
6. Discrete Mathematics
6.1. Finsets and Fintypes
6.2. Counting Arguments
6.3. Inductively Defined Types
7. Structures
7.1. Defining structures
7.2. Algebraic Structures
7.3. Building the Gaussian Integers
8. Hierarchies
8.1. Basics
8.2. Morphisms
8.3. Sub-objects
9. Groups and Rings
9.1. Monoids and Groups
9.2. Rings
10. Linear algebra
10.1. Vector spaces and linear maps
10.2. Subspaces and quotients
10.3. Endomorphisms
10.4. Matrices, bases and dimension
11. Topology
11.1. Filters
11.2. Metric spaces
11.3. Topological spaces
12. Differential Calculus
12.1. Elementary Differential Calculus
12.2. Differential Calculus in Normed Spaces
13. Integration and Measure Theory
13.1. Elementary Integration
13.2. Measure Theory
13.3. Integration

