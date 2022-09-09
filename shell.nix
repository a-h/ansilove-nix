with import <nixpkgs> {};
let
  libansilove = callPackage ./libansilove.nix {};
in
stdenv.mkDerivation rec {
  name = "ansilove-shell";
  buildInputs = [ libansilove ];
}
