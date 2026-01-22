{
  lib,
  fetchFromGitHub,
  buildPythonPackage,
  packaging,
  setuptools,
  pkgconfig,
  freetype,
  pytest,
  python,
  pillow,
  numpy,
}:

buildPythonPackage rec {
  pname = "aggdraw";
<<<<<<< HEAD
  version = "1.4.1";
  format = "pyproject";
||||||| 213fed0310e3
  version = "1.3.19";
  format = "pyproject";
=======
  version = "1.4.1";
  pyproject = true;
>>>>>>> master

  src = fetchFromGitHub {
    owner = "pytroll";
    repo = "aggdraw";
<<<<<<< HEAD
    rev = "v${version}";
    hash = "sha256-rBasRGdlM6/NsUd8+KsgHoZMsWhAhneSWjTeZ/QQZZ8=";
||||||| 213fed0310e3
    rev = "v${version}";
    hash = "sha256-J9+mxlUxOoRBFdz+p8me2T93jaov5rNvKbAZ2YX/VhA=";
=======
    tag = "v${version}";
    hash = "sha256-rBasRGdlM6/NsUd8+KsgHoZMsWhAhneSWjTeZ/QQZZ8=";
>>>>>>> master
  };

  build-system = [
    packaging
    setuptools
    pkgconfig
  ];

  buildInputs = [ freetype ];

  nativeCheckInputs = [
    numpy
    pillow
    pytest
  ];

  checkPhase = ''
    runHook preCheck
    ${python.interpreter} selftest.py
    runHook postCheck
  '';

  pythonImportsCheck = [ "aggdraw" ];

  meta = {
    description = "High quality drawing interface for PIL";
    homepage = "https://github.com/pytroll/aggdraw";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ onny ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ onny ];
=======
    changelog = "https://github.com/pytroll/aggdraw/blob/${src.tag}CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ onny ];
>>>>>>> master
  };
}
