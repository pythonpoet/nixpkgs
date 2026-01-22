{
  lib,
  rustPlatform,
  fetchFromGitHub,
  nixosTests,
  nix-update-script,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "chhoto-url";
<<<<<<< HEAD
  version = "6.5.2";
||||||| 213fed0310e3
  version = "6.5.1";
=======
  version = "6.5.4";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "SinTan1729";
    repo = "chhoto-url";
    tag = finalAttrs.version;
<<<<<<< HEAD
    hash = "sha256-OO/foBlo6O4sXT6iP85L3liMHFZkCOTcP6Nx9UxyLJg=";
||||||| 213fed0310e3
    hash = "sha256-gDD/1NKqPH84nr+EjTFfMGZkZfskQujn+uRGrnGs/fg=";
=======
    hash = "sha256-s6jYI/btY7/osdVPyAABckSFFDiCYhBZJJIkuFQklh4=";
>>>>>>> master
  };

  sourceRoot = "${finalAttrs.src.name}/actix";

  postPatch = ''
    substituteInPlace src/{main.rs,services.rs} \
      --replace-fail "./resources/" "${placeholder "out"}/share/chhoto-url/resources/"
  '';

<<<<<<< HEAD
  cargoHash = "sha256-WVSS2041oaxvISmZ9YoLUipSXAcikfeHlvbuN6ZjMb8=";
||||||| 213fed0310e3
  cargoHash = "sha256-jSdUKkZBgpMN05FmZUXHqBszuDAByf6bzIaaRNfymGY=";
=======
  cargoHash = "sha256-mECYGKWlEP8mNk+qP+my6hcNm68ru7o4jzhb5hM2SKQ=";
>>>>>>> master

  postInstall = ''
    mkdir -p $out/share/chhoto-url
    cp -r ${finalAttrs.src}/resources $out/share/chhoto-url/resources
  '';

  passthru = {
    tests = { inherit (nixosTests) chhoto-url; };
    updateScript = nix-update-script { };
  };

  meta = {
    description = "Simple, blazingly fast, selfhosted URL shortener with no unnecessary features";
    homepage = "https://github.com/SinTan1729/chhoto-url";
    changelog = "https://github.com/SinTan1729/chhoto-url/releases/tag/${finalAttrs.version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ defelo ];
    mainProgram = "chhoto-url";
  };
})
