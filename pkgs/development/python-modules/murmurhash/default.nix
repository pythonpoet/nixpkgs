{
  lib,
  buildPythonPackage,
  cython,
  fetchPypi,
  setuptools,
}:

buildPythonPackage rec {
  pname = "murmurhash";
  version = "1.0.15";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-WOKye3hH+eKm7fELR6jI3XCkcF9F3Mt792rq2s9WugE=";
  };

  postPatch = ''
    substituteInPlace setup.py \
      --replace "'wheel>=0.32.0,<0.33.0'" ""
  '';

  build-system = [ setuptools ];

  buildInputs = [ cython ];

  # No test
  doCheck = false;

  pythonImportsCheck = [ "murmurhash" ];

  meta = {
    description = "Cython bindings for MurmurHash2";
    homepage = "https://github.com/explosion/murmurhash";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ aborsu ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ aborsu ];
=======
    changelog = "https://github.com/explosion/murmurhash/releases/tag/release-v${version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ aborsu ];
>>>>>>> master
  };
}
