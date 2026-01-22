{
  lib,
  nix-update-script,
  buildGoModule,
  fetchFromGitHub,
  olm,
  # This option enables the use of an experimental pure-Go implementation of
  # the Olm protocol instead of libolm for end-to-end encryption. Using goolm
  # is not recommended by the mautrix developers, but they are interested in
  # people trying it out in non-production-critical environments and reporting
  # any issues they run into.
  withGoolm ? false,
}:

buildGoModule rec {
  pname = "mautrix-whatsapp";
<<<<<<< HEAD
  version = "25.12";
  tag = "v0.2512.0";
||||||| 213fed0310e3
  version = "25.11";
  tag = "v0.2511.0";
=======
  version = "26.01";
  tag = "v0.2601.0";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "mautrix";
    repo = "whatsapp";
    inherit tag;
<<<<<<< HEAD
    hash = "sha256-gVQSACXQ384MYOptRKGSIzCjOgyWW+8/YrxKCaCqhuA=";
||||||| 213fed0310e3
    hash = "sha256-0Jpod9/mZ9eGFvPxki6Yz0KL1XQ4HTtZ7Zv7WvamuC0=";
=======
    hash = "sha256-CNrAQSZgF0t5oo2xRsVdif3LIGOnTe2ea996icVkCjE=";
>>>>>>> master
  };

  buildInputs = lib.optional (!withGoolm) olm;
  tags = lib.optional withGoolm "goolm";

<<<<<<< HEAD
  vendorHash = "sha256-eyukS+rEysjhaywxzgqKP11IJF2SY9FSluQIOESZ6mk=";
||||||| 213fed0310e3
  vendorHash = "sha256-n25j2uM3e5/5PYs2jwH+iclaU/p/MhctCAhPninz2HI=";

  doCheck = false;
=======
  vendorHash = "sha256-Jvd3NgDRCyLrRV+6+kmcUSPCSSaxaKLD9EdrSyFwm1M=";
>>>>>>> master

  ldflags = [
    "-s"
    "-w"
    "-X"
    "main.Tag=${tag}"
  ];

  passthru.updateScript = nix-update-script { };

  meta = {
    homepage = "https://github.com/mautrix/whatsapp";
    description = "Matrix-WhatsApp puppeting bridge";
    license = lib.licenses.agpl3Plus;
    maintainers = with lib.maintainers; [
      vskilet
      ma27
      chvp
      SchweGELBin
    ];
    mainProgram = "mautrix-whatsapp";
  };
}
