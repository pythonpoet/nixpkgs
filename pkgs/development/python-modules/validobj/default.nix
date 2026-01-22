{
  lib,
  buildPythonPackage,
  fetchPypi,
  flit-core,
  hypothesis,
  pytestCheckHook,
}:

buildPythonPackage rec {
  pname = "validobj";
  version = "1.6";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-dXUvInNYkl10zdGQhJ6h1JqCNlZ+VsvwnEMb2xj6qOA=";
  };

  build-system = [ flit-core ];

  nativeCheckInputs = [
    hypothesis
    pytestCheckHook
  ];

  pythonImportsCheck = [ "validobj" ];

<<<<<<< HEAD
  meta = {
    description = "Validobj is library that takes semistructured data (for example JSON and YAML configuration files) and converts it to more structured Python objects";
||||||| 213fed0310e3
  meta = with lib; {
    description = "Validobj is library that takes semistructured data (for example JSON and YAML configuration files) and converts it to more structured Python objects";
=======
  meta = {
    description = "Library that takes semistructured data (for example JSON and YAML configuration files) and converts it to more structured Python objects";
>>>>>>> master
    homepage = "https://github.com/Zaharid/validobj";
<<<<<<< HEAD
    license = with lib.licenses; [ mit ];
    maintainers = with lib.maintainers; [ veprbl ];
||||||| 213fed0310e3
    license = with licenses; [ mit ];
    maintainers = with maintainers; [ veprbl ];
=======
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ veprbl ];
>>>>>>> master
  };
}
