{
  lib,
  stdenv,
  fetchFromGitHub,
  cmake,
  boost,
  eigen,
  zlib,
  llvmPackages,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "iqtree";
  version = "3.0.1";

  src = fetchFromGitHub {
    owner = "iqtree";
    repo = "iqtree3";
    tag = "v${finalAttrs.version}";
    hash = "sha256-6Zy/u7YSCoqkLwq6xOoFMFDInGYREea1gS+PzSP4F8Q=";
    fetchSubmodules = true;
  };

  nativeBuildInputs = [ cmake ];

  buildInputs = [
    boost
    eigen
    zlib
  ]
  ++ lib.optionals stdenv.hostPlatform.isDarwin [
    llvmPackages.openmp
  ];

<<<<<<< HEAD
  meta = {
    homepage = "http://www.iqtree.org/";
||||||| 213fed0310e3
  meta = with lib; {
    homepage = "http://www.iqtree.org/";
=======
  cmakeFlags = [
    (lib.cmakeBool "USE_CMAPLE" false) # tries to download googletest
  ];

  meta = {
    homepage = "https://iqtree.github.io/";
>>>>>>> master
    description = "Efficient and versatile phylogenomic software by maximum likelihood";
<<<<<<< HEAD
    mainProgram = "iqtree2";
    license = lib.licenses.lgpl2;
    maintainers = with lib.maintainers; [ bzizou ];
    platforms = [
      "x86_64-linux"
      "x86_64-darwin"
    ];
||||||| 213fed0310e3
    mainProgram = "iqtree2";
    license = licenses.lgpl2;
    maintainers = with maintainers; [ bzizou ];
    platforms = [
      "x86_64-linux"
      "x86_64-darwin"
    ];
=======
    mainProgram = "iqtree3";
    license = lib.licenses.lgpl2;
    maintainers = with lib.maintainers; [ bzizou ];
    platforms = lib.platforms.linux;
>>>>>>> master
  };
})
