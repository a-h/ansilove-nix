# Example at https://lantian.pub/en/article/modify-computer/nixos-packaging.lantian/
{ lib
, stdenv
, fetchFromGitHub
, cmake
, gd
, ...
} @ args:

stdenv.mkDerivation rec {
  pname = "libansilove";
  version = "1.3.1";

  src = fetchFromGitHub ({
    owner = "ansilove";
    repo = "libansilove";
    rev = "1.3.1";
    fetchSubmodules = false;
    sha256 = "sha256-toEMELi+3pnIjYOiS0kdQbkzbgCejF6JI+7Jtyxln5c=";
  });

  enableParallelBuilding = true;

  nativeBuildInputs = [ 
    cmake
    gd
  ];
}
