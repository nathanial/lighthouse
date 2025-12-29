import Lake
open Lake DSL

package lighthouse where
  precompileModules := true

require terminus from git "https://github.com/nathanial/terminus" @ "v0.0.1"
require ledger from git "https://github.com/nathanial/ledger" @ "v0.0.1"
require crucible from git "https://github.com/nathanial/crucible" @ "v0.0.1"

@[default_target]
lean_lib Lighthouse where
  roots := #[`Lighthouse]

lean_exe lighthouse where
  root := `Main

lean_lib Tests where
  roots := #[`Tests]

@[test_driver]
lean_exe tests where
  root := `Tests.Main
