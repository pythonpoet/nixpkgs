{
  lib,
  ansible-compat,
  ansible-core,
  buildPythonPackage,
  click-help-colors,
  enrich,
  fetchPypi,
  jsonschema,
  molecule,
  packaging,
  pluggy,
  rich,
  setuptools,
  setuptools-scm,
  testers,
  wcmatch,
  withPlugins ? true,
  molecule-plugins,
  yamllint,
}:

buildPythonPackage rec {
  pname = "molecule";
<<<<<<< HEAD
  version = "25.11.1";
||||||| 213fed0310e3
  version = "25.11.0";
=======
  version = "25.12.0";
>>>>>>> master
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
<<<<<<< HEAD
    hash = "sha256-xliI4yg8JncEj5RdGXKWBk/87orqW7fo//ObHBmc47o=";
||||||| 213fed0310e3
    hash = "sha256-8+W1HbBKMXtpi8vmgeHnRmwJ7dODjU1Qh9YhvZ5Etz8=";
=======
    hash = "sha256-sia/G+Z84PowxyaqsiYGP5RD5WHX49BI9V37LuUa29Y=";
>>>>>>> master
  };

  nativeBuildInputs = [
    setuptools
    setuptools-scm
  ];

  propagatedBuildInputs = [
    ansible-compat
    ansible-core
    click-help-colors
    enrich
    jsonschema
    packaging
    pluggy
    rich
    yamllint
    wcmatch
  ]
  ++ lib.optional withPlugins molecule-plugins;

  pythonImportsCheck = [ "molecule" ];

  # tests can't be easily run without installing things from ansible-galaxy
  doCheck = false;

  passthru.tests.version =
    (testers.testVersion {
      package = molecule;
      command = "PY_COLORS=0 ${pname} --version";
    }).overrideAttrs
      (old: {
        # workaround the error: Permission denied: '/homeless-shelter'
        HOME = "$(mktemp -d)";
      });

  meta = {
    description = "Aids in the development and testing of Ansible roles";
    homepage = "https://github.com/ansible-community/molecule";
    changelog = "https://github.com/ansible/molecule/releases/tag/v${version}";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ dawidd6 ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ dawidd6 ];
=======
    license = lib.licenses.mit;
    maintainers = [ ];
>>>>>>> master
    mainProgram = "molecule";
  };
}
