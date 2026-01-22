{
  lib,
  stdenvNoCC,
  fetchurl,
  nixosTests,
  cacert,
  caBundle ? "${cacert}/etc/ssl/certs/ca-bundle.crt",
  nextcloud31Packages,
  nextcloud32Packages,
}:

let
  generic =
    {
      version,
      hash,
      eol ? false,
      extraVulnerabilities ? [ ],
      packages,
    }:
    stdenvNoCC.mkDerivation rec {
      pname = "nextcloud";
      inherit version;

      src = fetchurl {
        url = "https://download.nextcloud.com/server/releases/nextcloud-${version}.tar.bz2";
        inherit hash;
      };

      passthru = {
        tests = lib.filterAttrs (
          key: _: (lib.hasSuffix (lib.versions.major version) key)
        ) nixosTests.nextcloud;
        inherit packages;
      };

      postPatch = ''
        cp ${caBundle} resources/config/ca-bundle.crt
      '';

      installPhase = ''
        runHook preInstall
        mkdir -p $out/
        cp -R . $out/
        runHook postInstall
      '';

      meta = {
        changelog = "https://nextcloud.com/changelog/#${lib.replaceStrings [ "." ] [ "-" ] version}";
        description = "Sharing solution for files, calendars, contacts and more";
        homepage = "https://nextcloud.com";
        teams = [ lib.teams.nextcloud ];
        license = lib.licenses.agpl3Plus;
        platforms = lib.platforms.linux;
        knownVulnerabilities =
          extraVulnerabilities ++ (lib.optional eol "Nextcloud version ${version} is EOL");
      };
    };
in
{
  nextcloud31 = generic {
<<<<<<< HEAD
    version = "31.0.12";
    hash = "sha256-spCJ0KvDkY9z8r4tdWhbjXALj9i+9BYpfyVDQyXwnDY=";
||||||| 213fed0310e3
    version = "31.0.11";
    hash = "sha256-iC95OquosB5ZgrZCJSJrMjcxUrv/HNLJLjMudJcLe8Y=";
=======
    version = "31.0.13";
    hash = "sha256-kt8INpRn6Bwj1/2Zevt1bq5Ezkfv8MhcXU0nIS6+KD4=";
>>>>>>> master
    packages = nextcloud31Packages;
  };

  nextcloud32 = generic {
<<<<<<< HEAD
    version = "32.0.3";
    hash = "sha256-m3GslskQtKNQ2Ya9OpLqBvAqFh+lhjNLVth9isr8YtQ=";
||||||| 213fed0310e3
    version = "32.0.2";
    hash = "sha256-Fe3hmtiOxySDTfrX+uMGpy+TL9BC82szP+JBgVWpN8U=";
=======
    version = "32.0.5";
    hash = "sha256-jdC8j44tJi7a0RGX1KB695m1H+hy7i2SWf+hm0PlQ60=";
>>>>>>> master
    packages = nextcloud32Packages;
  };

  # tip: get the sha with:
  # curl 'https://download.nextcloud.com/server/releases/nextcloud-${version}.tar.bz2.sha256'
}
