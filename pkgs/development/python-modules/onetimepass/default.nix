{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
  six,
  timecop,
  unittestCheckHook,
}:

buildPythonPackage rec {
  pname = "onetimepass";
  version = "1.0.1";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "tadeck";
    repo = "onetimepass";
    tag = "v${version}";
    hash = "sha256-cHJg3vdUpWp5+HACIeTGrqkHKUDS//aQICSjPKgwu3I=";
  };

  build-system = [ setuptools ];

  dependencies = [ six ];

  nativeCheckInputs = [
    timecop
    unittestCheckHook
  ];

  pythonImportsCheck = [ "onetimepass" ];

  meta = {
    description = "One-time password library for HMAC-based (HOTP) and time-based (TOTP) passwords";
    homepage = "https://github.com/tadeck/onetimepass";
    changelog = "https://github.com/tadeck/onetimepass/releases/tag/v${version}";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ zakame ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ zakame ];
=======
    license = lib.licenses.mit;
>>>>>>> master
  };
}
