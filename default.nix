with import <nixpkgs> {};

let
  masuperlib-src = fetchTarball "https://github.com/g0blet-g0blin/masuperlib/archive/refs/tags/v0.1.tar.gz";
  # masuperlib-src = ../masuperlib;

  masuperlib = callPackage masuperlib-src {};

in stdenv.mkDerivation {
    name = "masuperapp";
    src = ./.;
    nativeBuildInputs = [ cmake ];
    buildInputs = [ masuperlib ];
}

