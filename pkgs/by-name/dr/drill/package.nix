{
  lib,
  stdenv,
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  openssl,
}:

rustPlatform.buildRustPackage rec {
  pname = "drill";
  version = "0.9.0";

  src = fetchFromGitHub {
    owner = "fcsonline";
    repo = "drill";
    rev = version;
    sha256 = "sha256-jBnRVTnrSfEpN7xgMrlAsCwl62kZpHMI4IeT0rPb+zg=";
  };

  cargoHash = "sha256-CfPmTmtCpBgxDH043yIedZk9dngPb5L6z7jQpmvtiEA=";

  nativeBuildInputs = lib.optionals stdenv.hostPlatform.isLinux [
    pkg-config
  ];

  OPENSSL_LIB_DIR = "${lib.getLib openssl}/lib";
  OPENSSL_DIR = "${lib.getDev openssl}";

  buildInputs = lib.optionals stdenv.hostPlatform.isLinux [
    openssl
  ];

  meta = {
    description = "HTTP load testing application inspired by Ansible syntax";
    homepage = "https://github.com/fcsonline/drill";
<<<<<<< HEAD
    license = lib.licenses.gpl3Only;
    maintainers = with lib.maintainers; [ Br1ght0ne ];
||||||| 213fed0310e3
    license = licenses.gpl3Only;
    maintainers = with maintainers; [ Br1ght0ne ];
=======
    license = lib.licenses.gpl3Only;
>>>>>>> master
    mainProgram = "drill";
  };
}
