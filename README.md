# nur-packages

A personal Nix flake for [@Josef-Hlink](https://github.com/Josef-Hlink)'s tools.

Right now it hosts a single package: **twin**. Its derivation is generated
automatically by [GoReleaser](https://goreleaser.com) on each twin release and
points at the prebuilt release binaries.

## twin

[tmux workspace manager driven by TOML recipes](https://github.com/Josef-Hlink/twin).

```sh
# one-off run
nix run github:Josef-Hlink/nur-packages#twin -- tspmo

# install into your nix profile
nix profile install github:Josef-Hlink/nur-packages#twin
```
