{
  buildPythonPackage,
  fetchFromGitHub,
  lib,
  pytestCheckHook,
  setuptools,
  setuptools-scm,
}:

buildPythonPackage rec {
  pname = "tcolorpy";
  version = "0.1.7";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "thombashi";
    repo = "tcolorpy";
    tag = "v${version}";
    hash = "sha256-0AXpwRQgBisO4360J+Xd4+EWzDtDJ64UpSUmDnSYjKE=";
  };

  build-system = [
    setuptools
    setuptools-scm
  ];

  pythonImportsCheck = [ "tcolorpy" ];

  nativeCheckInputs = [ pytestCheckHook ];

  meta = {
    homepage = "https://github.com/thombashi/tcolorpy";
    description = "Library to apply true color for terminal text";
<<<<<<< HEAD
    maintainers = with lib.maintainers; [ genericnerdyusername ];
    license = lib.licenses.mit;
||||||| 213fed0310e3
    maintainers = with maintainers; [ genericnerdyusername ];
    license = licenses.mit;
=======
    maintainers = [ ];
    license = lib.licenses.mit;
>>>>>>> master
  };
}
