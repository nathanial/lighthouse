import Lake
open Lake DSL

package lighthouse where
  precompileModules := true

-- Local workspace dependencies
require terminus from ".." / "terminus"
require ledger from ".." / "ledger"
require crucible from ".." / "crucible"

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
