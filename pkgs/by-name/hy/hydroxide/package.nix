{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "hydroxide";
  version = "0.2.31";

  src = fetchFromGitHub {
    owner = "emersion";
    repo = "hydroxide";
    rev = "v${version}";
    sha256 = "sha256-92eyt+s+kEXRuIXPRmbIQG5Mth7wJFCruqTN3wL5DhI=";
  };

  vendorHash = "sha256-CjvvVFjYRlykZwEqHtuD9qc/MsHZsJtKy2G6e2N7K0M=";

  doCheck = false;

  subPackages = [ "cmd/hydroxide" ];

  meta = {
    description = "Third-party, open-source ProtonMail bridge";
    homepage = "https://github.com/emersion/hydroxide";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ Br1ght0ne ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ Br1ght0ne ];
=======
    license = lib.licenses.mit;
>>>>>>> master
    mainProgram = "hydroxide";
  };
}
