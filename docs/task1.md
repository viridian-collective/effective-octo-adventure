Lean Copilot allows large language models (LLMs) to be used natively in Lean for proof automation
https://github.com/lean-dojo/LeanCopilot

- [ ] refactor the project so that all of the code depends on one `lean-toolchain` file!

⚠️ Your project must use a Lean version of at least lean4:v4.3.0-rc2.
```
[alex@nixos:~/workshop/effective-octo-adventure]$ lean --version
Lean (version 4.22.0, x86_64-unknown-linux-gnu, Release)
```

Lean version is supplied in `lean-toolchain` file, which we have three now:

```sh
✔ ~/workshop/effective-octo-adventure [dev L|…3] 
11:39 $ find . -name 'lean-toolchain'
./lean-toolchain
./Feline/lean-toolchain
./TPIL/lean-toolchain
./TPIL/.lake/packages/subverso/lean-toolchain
./TPIL/.lake/packages/subverso/demo-toml/lean-toolchain
./TPIL/.lake/packages/subverso/demo/lean-toolchain
```
This will rebuild for a couple of hours!

Observe the results of two commands:
```sh
✔ ~/workshop/effective-octo-adventure [dev L|…3]                                                          
11:44 $ nix develop
[alex@nixos:~/workshop/effective-octo-adventure/TPIL]$ lake exe examples                 11:44:26 [10/107]
ℹ [3/10] Replayed Examples.DependentTypeTheory                                                            
info: Examples/DependentTypeTheory.lean:16:0: m : Nat                                                     
info: Examples/DependentTypeTheory.lean:17:0: n : Nat                                                     
info: Examples/DependentTypeTheory.lean:18:0: n + 0 : Nat                                                 
info: Examples/DependentTypeTheory.lean:19:0: m * (n + 0) : Nat                                           
info: Examples/DependentTypeTheory.lean:20:0: b1 : Bool                                                   
info: Examples/DependentTypeTheory.lean:21:0: b1 && b2 : Bool                                             
info: Examples/DependentTypeTheory.lean:22:0: b1 || b2 : Bool                                             
info: Examples/DependentTypeTheory.lean:23:0: Bool.true : Bool                                            
info: Examples/DependentTypeTheory.lean:29:0: 20                                                          
info: Examples/DependentTypeTheory.lean:30:0: 3
info: Examples/DependentTypeTheory.lean:31:0: false
info: Examples/DependentTypeTheory.lean:39:0: Nat → Nat : Type
info: Examples/DependentTypeTheory.lean:40:0: Nat → Nat : Type
info: Examples/DependentTypeTheory.lean:41:0: Nat × Nat : Type
info: Examples/DependentTypeTheory.lean:42:0: Nat × Nat : Type
info: Examples/DependentTypeTheory.lean:43:0: Nat → Nat → Nat : Type
info: Examples/DependentTypeTheory.lean:44:0: Nat → Nat → Nat : Type
info: Examples/DependentTypeTheory.lean:45:0: Nat × Nat → Nat : Type
info: Examples/DependentTypeTheory.lean:46:0: (Nat → Nat) → Nat : Type
⚠ [8/10] Built Main
info: Main.lean:3:0: "The answer is 42"
warning: Main.lean:5:8: declaration uses 'sorry'
Hello, world!
```
vs
```sh
✔ ~/workshop/effective-octo-adventure [dev L|…3] 
11:45 $ nix run
How would you like to be addressed?

Hello, !
```
Refactor the program so that `nix run` produces the same outputs as `TPIL/lake exe examples`

# Solution
What we need to do is to discard the Mains in the subprojects, and have only one Main in the root project. Subprojects should be libraries only. Mains will go into the root project and will need to be integrated with the build tool, Lake.

- [ ] add a library to the root project.
lets see how a project with a dependency is structured:
```sh
11:51 $ ls TPIL/
Examples  Examples.lean  lakefile.toml  lake-manifest.json  lean-toolchain  Main.lean  README.md
```
Main.lean has the line:
```lean
import Examples
```
and Examples.lean has the line:
```lean
import Examples.Basic
import Examples.DependentTypeTheory
```
❗Now when I am trying to build I get error:
```sh
error: attribute 'TPIL' missing
       at /nix/store/r782gkqagn7chbk1wmm7ky8fa54br19y-source/manifests/v4.22.0.nix:278:20:
```
Look at https://github.com/lenianiva/lean4-nix to compare if they have a different structure for a package with a dependency.
