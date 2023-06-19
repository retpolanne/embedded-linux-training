with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "cross_compiling_toolchain";
  src = pkgs.fetchgit {
    url = "https://github.com/crosstool-ng/crosstool-ng";  
    rev = "36ad0b17a732aaffe4701d5d8d410d6e3e3abba9";
    sha256 = "sha256-bs5QX/wJfAhBI55fNkRwkXzKyCUP1iUwfq3hHHasXV4=";
  };
  nativeBuildInputs = [
    autoconf
    automake
    binutils
    which
    file
  ];
  buildInputs = [
    flex
    texinfo
    unzip
    help2man
    gperf
    libtool
    ncurses
    bison
  ];
  configurePhase = ''
    ./bootstrap
    ./configure --enable-local
    make
  '';
}
