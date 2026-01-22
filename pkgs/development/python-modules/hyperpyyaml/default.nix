{
  lib,
  buildPythonPackage,
  fetchFromGitHub,

  # build-system
  setuptools,

  # dependencies
  pyyaml,
  ruamel-yaml,

  # tests
  pytestCheckHook,
}:

buildPythonPackage rec {
  pname = "hyperpyyaml";
  version = "1.2.3";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "speechbrain";
    repo = "hyperpyyaml";
    tag = "v${version}";
    hash = "sha256-/7OrIR61zQYl2+RjiOOlaqUGWBieon5fe8sgmEvKowo=";
  };

  build-system = [
    setuptools
  ];

  dependencies = [
    pyyaml
    ruamel-yaml
  ];

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "hyperpyyaml" ];

  meta = {
    description = "Extensions to YAML syntax for better python interaction";
    homepage = "https://github.com/speechbrain/HyperPyYAML";
<<<<<<< HEAD
    changelog = "https://github.com/speechbrain/HyperPyYAML/releases/tag/v${version}";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ GaetanLepage ];
||||||| 213fed0310e3
    changelog = "https://github.com/speechbrain/HyperPyYAML/releases/tag/v${version}";
    license = licenses.asl20;
    maintainers = with maintainers; [ GaetanLepage ];
=======
    changelog = "https://github.com/speechbrain/HyperPyYAML/releases/tag/${src.tag}";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ GaetanLepage ];
>>>>>>> master
  };
}
