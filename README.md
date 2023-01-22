# 7langs

Simple nix flakes for the [readme book club](https://www.readme.gg/).

## Usage

You can use this to drop into an appropriate shell:

```sh
nix develop github:jcdickinson/7langs#<LANG>
```

Or you can set up a flake and `.direnv` that references this:

#### flake.nix
```nix
{ ... }:
{
    inputs = {
        sevenlangs.url = "github:jcdickinson/7langs";
        flake-utils.url = "github:numtide/flake-utils";
    };

    outputs = {
        sevenlangs,
        flake-utils,
        ...
    }: flake-utils.lib.eachDefaultSystem (system: let
        shells = import sevenlangs.devShells {
        inherit system;
    };
    in {
        devShells.default = shells.<LANG>;
    };
}
```

#### .direnv
```sh
use flake
```

