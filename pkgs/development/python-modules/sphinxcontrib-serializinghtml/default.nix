{
  lib,
  buildPythonPackage,
  fetchPypi,
  flit-core,
}:

buildPythonPackage rec {
  pname = "sphinxcontrib-serializinghtml";
  version = "2.0.0";
  pyproject = true;

  src = fetchPypi {
    pname = "sphinxcontrib_serializinghtml";
    inherit version;
    hash = "sha256-6dkSgn+HLAKQF6U/DvIYCzJ8P3/SPIcin3qOi3ADHU0=";
  };

  nativeBuildInputs = [ flit-core ];

  # Check is disabled due to circular dependency of sphinx
  dontCheckRuntimeDeps = true;
  doCheck = false;

  pythonNamespaces = [ "sphinxcontrib" ];

  meta = {
    description = "Sphinx extension which outputs \"serialized\" HTML files (json and pickle)";
    homepage = "https://github.com/sphinx-doc/sphinxcontrib-serializinghtml";
<<<<<<< HEAD
    license = lib.licenses.bsd2;
    teams = [ lib.teams.sphinx ];
||||||| 213fed0310e3
    license = licenses.bsd2;
    teams = [ teams.sphinx ];
=======
    license = lib.licenses.bsd2;
>>>>>>> master
  };
}
