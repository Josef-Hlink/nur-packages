{
  pkgs ? import <nixpkgs> { },
}:
let
  inherit (pkgs) lib callPackage;
in
# GoReleaser writes pkgs/<name>/default.nix on each release. The pathExists guard
# keeps the flake evaluable before the first release has populated it.
lib.optionalAttrs (builtins.pathExists ./pkgs/twin/default.nix) {
  twin = callPackage ./pkgs/twin/default.nix { };
}
