with import <nixpkgs> {};
let
  ansilove = callPackage ./ansilove.nix {};
in
stdenv.mkDerivation rec {
  name = "ansilove-shell";
  buildInputs = [ ansilove ];
}
