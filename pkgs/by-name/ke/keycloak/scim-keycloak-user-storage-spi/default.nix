{
  lib,
  fetchFromGitHub,
  maven,
}:
maven.buildMavenPackage rec {
  pname = "scim-keycloak-user-storage-spi";
  version = "kc25_0_4";

  src = fetchFromGitHub {
    owner = "justin-stephenson";
    repo = "scim-keycloak-user-storage-spi";
    tag = version;
    hash = "sha256-xEnYblL5lxs1pebxGy4pXiZrMJT0KwIZqB4dztRyz/A=";
  };

  mvnHash = "sha256-UUJXHQRqshaMpr4g8m2hdBy/dpl/IImkY+KGnUF1jAs=";

  installPhase = ''
    install -D "target/scim-user-spi-0.0.1-SNAPSHOT.jar" "$out/scim-user-spi-0.0.1-SNAPSHOT.jar"
  '';

  meta = {
    homepage = "https://github.com/justin-stephenson/scim-keycloak-user-storage-spi";
<<<<<<< HEAD
    description = "Third party module that extends Keycloak, allow for user storage in an external scimv2 server";
    sourceProvenance = with lib.sourceTypes; [
||||||| 213fed0310e3
    description = "Third party module that extends Keycloak, allow for user storage in an external scimv2 server";
    sourceProvenance = with sourceTypes; [
=======
    description = "Keycloak module that allows for user storage in an external SCIM 2.0 server";
    sourceProvenance = with lib.sourceTypes; [
>>>>>>> master
      fromSource
    ];
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ s1341 ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ s1341 ];
=======
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      s1341
      anish
    ];
>>>>>>> master
  };
}
