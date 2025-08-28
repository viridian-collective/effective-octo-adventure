import Lake
open Lake DSL

require aesop from git
  "https://github.com/leanprover-community/aesop.git" @ "v4.22.0-rc4"

-- require mathlib from git
--  "https://github.com/leanprover-community/mathlib4.git"

package Eoa

lean_lib Example

@[default_target]
lean_exe eoa {
  root := `Main
}
