{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  argcomplete,
  colorama,
  halo,
  platformdirs,
  spinners,
  types-colorama,
  typing-extensions,
  setuptools,
  pytestCheckHook,
  semver,
}:

buildPythonPackage rec {
  pname = "milc";
  version = "1.9.1";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "clueboard";
    repo = "milc";
    tag = version;
    hash = "sha256-byj2mcDxLl7rZEFjAt/g1kHllnVxiTIQaTMG24GeSVc=";
  };

  postPatch = ''
    # Needed for tests
    patchShebangs --build \
      example \
      custom_logger \
      questions \
      sparkline \
      hello \
      passwd_confirm \
      passwd_complexity \
      config_source
  '';

  dependencies = [
    argcomplete
    colorama
    halo
    platformdirs
    spinners
    types-colorama
    typing-extensions
  ];

  build-system = [
    setuptools
  ];

  nativeCheckInputs = [
    pytestCheckHook
    semver
  ];

  pythonImportsCheck = [ "milc" ];

  meta = {
    description = "Opinionated Batteries-Included Python 3 CLI Framework";
    mainProgram = "milc-color";
    homepage = "https://milc.clueboard.co";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ bhipple ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ bhipple ];
=======
    license = lib.licenses.mit;
>>>>>>> master
  };
}
