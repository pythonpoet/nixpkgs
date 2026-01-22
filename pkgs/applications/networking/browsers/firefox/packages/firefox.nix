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
  version = "146.0.1";
||||||| 213fed0310e3
  version = "145.0.1";
=======
  version = "147.0.1";
>>>>>>> master
  src = fetchurl {
    url = "mirror://mozilla/firefox/releases/${version}/source/firefox-${version}.source.tar.xz";
<<<<<<< HEAD
    sha512 = "ae95b86e483febf8dfec8347748dd9048ed7d7f845250e07aa8048e2b351da61f6f3c5f83bb0d0c72e1a75ec61b60e59bbe69639f0f33532910ff8bf5ca07394";
||||||| 213fed0310e3
    sha512 = "6e052fee46c31b2696ba5403f905e0b94b08ce354588cd6315d54ee1dcff9b82835d64ea5a57596dfb1866dd1518a29966fdaabdb4c3838103344bd2dc18c72d";
=======
    sha512 = "f1e1bc486451254f33b000fb4513fd948a5a6e84841980ee767c42d326e1856f44a8437c8fdbff2cb34d177fea2b1907fcd72dd33bcec3f06ddb8d88151853a8";
>>>>>>> master
  };

  meta = {
    changelog = "https://www.mozilla.org/en-US/firefox/${version}/releasenotes/";
    description = "Web browser built from Firefox source tree";
    homepage = "http://www.mozilla.com/en-US/firefox/";
    maintainers = with lib.maintainers; [
      booxter # darwin
      hexa
    ];
    platforms = lib.platforms.unix;
    broken = stdenv.buildPlatform.is32bit;
    # since Firefox 60, build on 32-bit platforms fails with "out of memory".
    # not in `badPlatforms` because cross-compilation on 64-bit machine might work.
    maxSilent = 14400; # 4h, double the default of 7200s (c.f. #129212, #129115)
    license = lib.licenses.mpl20;
    mainProgram = "firefox";
  };
  tests = {
    inherit (nixosTests) firefox;
  };
  updateScript = callPackage ../update.nix {
    attrPath = "firefox-unwrapped";
  };
}
