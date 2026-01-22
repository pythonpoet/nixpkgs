{
  stdenv,
  lib,
  callPackage,
  fetchurl,
  nixosTests,
  buildMozillaMach,
}:

buildMozillaMach rec {
  pname = "firefox";
<<<<<<< HEAD
  version = "140.6.0esr";
||||||| 213fed0310e3
  version = "140.5.0esr";
=======
  version = "140.7.0esr";
>>>>>>> master
  applicationName = "Firefox ESR";
  src = fetchurl {
    url = "mirror://mozilla/firefox/releases/${version}/source/firefox-${version}.source.tar.xz";
<<<<<<< HEAD
    sha512 = "ed66657bd4b2d94791892261d7c0c0d950b4f630d12ab28a777d93393427451a9aa125e5a01ee15f2ac0ff378d0be074a08583dcffd35609112ba4e6f9ada798";
||||||| 213fed0310e3
    sha512 = "412236a25cbea171bd5bd535e45c3ba40957a94e1f8dd3ab74241e0aa1c4075fcb8d394b9619599d60ce3e4563e712c825fa8bec441794f229356802f72b2861";
=======
    sha512 = "7781b1e203130c1cdf2a0c2ecb05a9cfa824c75d467e7faca78b66bd5568c821324112aecb774883d9f447af7fa4ade36488ff1017255af5510c8f641990e472";
>>>>>>> master
  };

  meta = {
    changelog = "https://www.mozilla.org/en-US/firefox/${lib.removeSuffix "esr" version}/releasenotes/";
    description = "Web browser built from Firefox source tree";
    homepage = "http://www.mozilla.com/en-US/firefox/";
    maintainers = with lib.maintainers; [ hexa ];
    platforms = lib.platforms.unix;
    broken = stdenv.buildPlatform.is32bit;
    # since Firefox 60, build on 32-bit platforms fails with "out of memory".
    # not in `badPlatforms` because cross-compilation on 64-bit machine might work.
    maxSilent = 14400; # 4h, double the default of 7200s (c.f. #129212, #129115)
    license = lib.licenses.mpl20;
    mainProgram = "firefox";
  };
  tests = {
    inherit (nixosTests) firefox-esr-140;
  };
  updateScript = callPackage ../update.nix {
    attrPath = "firefox-esr-140-unwrapped";
    versionPrefix = "140";
    versionSuffix = "esr";
  };
}
