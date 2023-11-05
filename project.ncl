let inputs = import "./nickel.lock.ncl" in
let organist = inputs.organist in

{
  shells = organist.shells.Bash,

  shells.build = {
    packages = {},
  },

  shells.dev = {
    packages.rustup = organist.import_nix "nixpkgs#rustup",
    packages.cargo-outdated = organist.import_nix "nixpkgs#cargo-outdated",
  },
}
  | organist.OrganistExpression
