{
  lib,
  fetchPypi,
  buildPythonPackage,
  pytestCheckHook,
  setuptools,
}:

buildPythonPackage rec {
  pname = "cexprtk";
  version = "0.4.2";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-sBLkHco0u2iEsdUxmPW2ONP/Fe08p0fOVJLmzz3t4os=";
  };

  build-system = [ setuptools ];

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "cexprtk" ];

  meta = {
    description = "Mathematical expression parser, cython wrapper";
    homepage = "https://github.com/mjdrushton/cexprtk";
<<<<<<< HEAD
    license = lib.licenses.cpl10;
    maintainers = with lib.maintainers; [ onny ];
||||||| 213fed0310e3
    license = licenses.cpl10;
    maintainers = with maintainers; [ onny ];
=======
    changelog = "https://github.com/mjdrushton/cexprtk/blob/${version}/CHANGES.md";
    license = lib.licenses.cpl10;
    maintainers = with lib.maintainers; [ onny ];
>>>>>>> master
  };
}
