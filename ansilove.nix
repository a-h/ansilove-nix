# Example at https://lantian.pub/en/article/modify-computer/nixos-packaging.lantian/
{ lib
, stdenv
, fetchFromGitHub
, pkgs
, ...
} @ args:

let
  libansilove = pkgs.callPackage ./libansilove.nix {};
in
stdenv.mkDerivation rec {
  pname = "ansilove";
  version = "4.1.6";

  src = fetchFromGitHub ({
    owner = "ansilove";
    repo = "ansilove";
    rev = "4.1.6";
    fetchSubmodules = false;
    sha256 = "sha256-PFFz25QArx1evzzr9n/y9TE/hmQDZY81TElZekQsKcw=";
  });

  enableParallelBuilding = true;

  nativeBuildInputs = [ 
    pkgs.cmake
    libansilove
  ];
}
