{
  buildGoModule,
  fetchFromGitHub,
  lib,
}:
buildGoModule rec {
  pname = "emoji-picker";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "bcongdon";
    repo = "ep";
    rev = version;
    hash = "sha256-ElUsmuJ43kOsu4cGvNytM+xHTfuzMo0jcG8Z1cIeHJs=";
  };

  patches = [ ./xsys.patch ];

  vendorHash = "sha256-Xeh5JKIBiyOXRGVx9udoUNs+Wv49BMyFvmnAbDfG3rA=";

  meta = {
    description = "CLI Emoji Picker";
    homepage = "https://github.com/bcongdon/ep";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ urandom ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ urandom ];
=======
    license = lib.licenses.mit;
    maintainers = [ ];
>>>>>>> master
    mainProgram = "ep";
  };
}
