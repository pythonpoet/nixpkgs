{
  lib,
  stdenv,
  fetchurl,
  fetchpatch,
  # This also disables building tests.
  # on static windows cross-compile they fail to build
  doCheck ? with stdenv.hostPlatform; !(isWindows && isStatic),
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "libconfig";
  version = "1.8.1";

  src = fetchurl {
    url = "https://hyperrealm.github.io/libconfig/dist/libconfig-${finalAttrs.version}.tar.gz";
    hash = "sha256-1iidkvbvmdzvi0gabfks7l1pvvn836zs4d5y2f95y92bk61g7il7";
  };

  inherit doCheck;

  configureFlags =
    lib.optional (stdenv.hostPlatform.isWindows || stdenv.hostPlatform.isStatic) "--disable-examples"
    ++ lib.optional (!finalAttrs.finalPackage.doCheck) "--disable-tests";

  cmakeFlags = lib.optionals (!finalAttrs.finalPackage.doCheck) [ "-DBUILD_TESTS:BOOL=OFF" ];

  meta = {
    homepage = "https://hyperrealm.github.io/libconfig/";
    description = "C/C++ library for processing configuration files";
    license = lib.licenses.lgpl3;
    maintainers = with lib.maintainers; [ stv0g ];
    platforms = lib.platforms.all;
  };
})
