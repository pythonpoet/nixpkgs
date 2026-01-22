{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  cargo,
  rustPlatform,
  rustc,
  typing-extensions,
  pytestCheckHook,
  hypothesis,
  inline-snapshot,
  pytest-benchmark,
  pytest-run-parallel,
  pytest-timeout,
  pytest-mock,
  dirty-equals,
  pydantic,
  typing-inspection,
}:

let
  pydantic-core = buildPythonPackage rec {
    pname = "pydantic-core";
    version = "2.41.5";
    pyproject = true;

    src = fetchFromGitHub {
      owner = "pydantic";
      repo = "pydantic-core";
      tag = "v${version}";
      hash = "sha256-oIYHLSep8tWOXEaUybXG8Gv9WBoPGQ1Aj7QyqYksvMw=";
    };

    cargoDeps = rustPlatform.fetchCargoVendor {
      inherit pname version src;
      hash = "sha256-Kvc0a34C6oGc9oS/iaPaazoVUWn5ABUgrmPa/YocV+Y=";
    };

    nativeBuildInputs = [
      cargo
      rustPlatform.cargoSetupHook
      rustPlatform.maturinBuildHook
      rustc
    ];

    dependencies = [ typing-extensions ];

    pythonImportsCheck = [ "pydantic_core" ];

    # escape infinite recursion with pydantic via inline-snapshot
    doCheck = false;
    passthru.tests.pytest = pydantic-core.overridePythonAttrs { doCheck = true; };

    nativeCheckInputs = [
      pytestCheckHook
      hypothesis
      inline-snapshot
      pytest-timeout
      dirty-equals
      pytest-benchmark
      pytest-mock
      pytest-run-parallel
      typing-inspection
    ];

<<<<<<< HEAD
    disabledTests = [
      # RecursionError: maximum recursion depth exceeded while calling a Python object
      "test_recursive"
    ];

    disabledTestPaths = [
      # no point in benchmarking in nixpkgs build farm
      "tests/benchmarks"
    ];

    meta = {
      changelog = "https://github.com/pydantic/pydantic-core/releases/tag/v${version}";
||||||| 213fed0310e3
    disabledTests = [
      # RecursionError: maximum recursion depth exceeded while calling a Python object
      "test_recursive"
    ];

    disabledTestPaths = [
      # no point in benchmarking in nixpkgs build farm
      "tests/benchmarks"
    ];

    meta = with lib; {
      changelog = "https://github.com/pydantic/pydantic-core/releases/tag/v${version}";
=======
    meta = {
      changelog = "https://github.com/pydantic/pydantic-core/releases/tag/${src.tag}";
>>>>>>> master
      description = "Core validation logic for pydantic written in rust";
      homepage = "https://github.com/pydantic/pydantic-core";
<<<<<<< HEAD
      license = lib.licenses.mit;
      maintainers = pydantic.meta.maintainers;
||||||| 213fed0310e3
      license = licenses.mit;
      maintainers = pydantic.meta.maintainers;
=======
      license = lib.licenses.mit;
      inherit (pydantic.meta) maintainers;
>>>>>>> master
    };
  };
in
pydantic-core
