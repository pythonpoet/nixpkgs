{
  lib,
  fetchFromGitLab,
  php,
  nixosTests,
  writeScript,
}:

php.buildComposerProject2 (finalAttrs: {
  pname = "drupal";
<<<<<<< HEAD
  version = "11.2.8";
||||||| 213fed0310e3
  version = "11.2.7";
=======
  version = "11.3.2";
>>>>>>> master

  src = fetchFromGitLab {
    domain = "git.drupalcode.org";
    owner = "project";
    repo = "drupal";
    tag = finalAttrs.version;
<<<<<<< HEAD
    hash = "sha256-y561aeENxRMEFS0i2gMnTtSFfgQwCEM//tdiE3ub3Yc=";
||||||| 213fed0310e3
    hash = "sha256-mLpdLMacj3ueY8e8YtBA+0D2HOIE2A25Gt3+1E5NqoA=";
=======
    hash = "sha256-RrBnVDjB6aKW6btmX604saXfPKo18oRka+SdlNmFqUo=";
>>>>>>> master
  };

<<<<<<< HEAD
  vendorHash = "sha256-filBjabfUnqL4o1Oh3OC+EoyFrVI6xvFbWEyPZKsZ+Q=";
||||||| 213fed0310e3
  vendorHash = "sha256-s9pUsCJF8PJmiZRqLNEDulGu5fElaN8HVYk+3VtP6CY=";
=======
>>>>>>> master
  composerNoPlugins = false;
  vendorHash = "sha256-c3pqPnyeuSqpMhh1an1NAnDC+IyeRVUT+dCN19/nrMQ=";

  passthru = {
    tests = {
      inherit (nixosTests) drupal;
    };
    updateScript = writeScript "update.sh" ''
      #!/usr/bin/env nix-shell
      #!nix-shell -i bash -p nix-update xmlstarlet

      set -eu -o pipefail

      version=$(curl -k --silent --globoff "https://updates.drupal.org/release-history/drupal/current" | xmlstarlet sel -t -v "/project/releases/release/tag[not(contains(., 'alpha'))][not(contains(., 'beta'))][not(contains(., '-rc'))]" | grep -m 1 '.')

      nix-update drupal --version $version
    '';
  };

  meta = {
    description = "Drupal CMS";
    license = lib.licenses.mit;
    homepage = "https://drupal.org/";
    maintainers = with lib.maintainers; [
      OulipianSummer
    ];
    platforms = php.meta.platforms;
  };
})
