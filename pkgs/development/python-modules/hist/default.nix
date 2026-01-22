{
  lib,
  fetchPypi,
  buildPythonPackage,
  boost-histogram,
  histoprint,
  hatchling,
  hatch-vcs,
  numpy,
  pytestCheckHook,
  pytest-mpl,
}:

buildPythonPackage (finalAttrs: {
  pname = "hist";
  version = "2.9.2";
  pyproject = true;

  src = fetchPypi {
    inherit (finalAttrs) pname version;
    hash = "sha256-Z7+A4Vuxq5n4nM9liO+jV9FoJtaRBDtyYWXHgzSpBns=";
  };

  build-system = [
    hatchling
    hatch-vcs
  ];

  dependencies = [
    boost-histogram
    histoprint
    numpy
  ];

  checkInputs = [
    pytestCheckHook
    pytest-mpl
  ];

<<<<<<< HEAD
  meta = {
||||||| 213fed0310e3
  meta = with lib; {
=======
  pythonImportsCheck = [ "hist" ];

  meta = {
>>>>>>> master
    description = "Histogramming for analysis powered by boost-histogram";
    mainProgram = "";
    homepage = "https://hist.readthedocs.io/";
<<<<<<< HEAD
    changelog = "https://github.com/scikit-hep/hist/releases/tag/v${version}";
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [ veprbl ];
||||||| 213fed0310e3
    changelog = "https://github.com/scikit-hep/hist/releases/tag/v${version}";
    license = licenses.bsd3;
    maintainers = with maintainers; [ veprbl ];
=======
    changelog = "https://github.com/scikit-hep/hist/releases/tag/v${finalAttrs.version}";
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [ veprbl ];
>>>>>>> master
  };
})
