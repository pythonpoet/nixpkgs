{
  lib,
  buildPythonPackage,
  cffi,
  fetchFromGitHub,
  flatbuffers,
  h3,
  numba,
  numpy,
  pydantic,
  pytestCheckHook,
  pytz,
  setuptools,
}:

buildPythonPackage (finalAttrs: {
  pname = "timezonefinder";
<<<<<<< HEAD
  version = "8.1.0";
||||||| 213fed0310e3
  version = "8.0.0";
=======
  version = "8.2.1";
>>>>>>> master
  pyproject = true;

  src = fetchFromGitHub {
    owner = "jannikmi";
    repo = "timezonefinder";
<<<<<<< HEAD
    tag = version;
    hash = "sha256-jIsS8RcbMNhj5Z/AYbNyVsbQOozbk75tXSLRqhez9Ug=";
||||||| 213fed0310e3
    tag = version;
    hash = "sha256-AvuNsIpJBZymlJe4HLPEmHfxN1jhqPmrEgRPb3W+B3E=";
=======
    tag = finalAttrs.version;
    hash = "sha256-OuNJ4C5/rQo8o7o8R39FvwqK7lS7IGGDjNaP2n3GTVU=";
>>>>>>> master
  };

  build-system = [ setuptools ];

  nativeBuildInputs = [ cffi ];

  dependencies = [
    cffi
    flatbuffers
    h3
    numpy
  ];

  optional-dependencies = {
    numba = [ numba ];
    pytz = [ pytz ];
  };

  nativeCheckInputs = [
    pydantic
    pytestCheckHook
<<<<<<< HEAD
  ]
  ++ lib.flatten (builtins.attrValues optional-dependencies);
||||||| 213fed0310e3
  ];
=======
  ]
  ++ lib.concatAttrValues finalAttrs.passthru.optional-dependencies;
>>>>>>> master

  pythonImportsCheck = [ "timezonefinder" ];

  preCheck = ''
    # Some tests need the CLI on the PATH
    export PATH=$out/bin:$PATH
  '';

  disabledTestPaths = [
    # Don't test the archive content
    "tests/test_package_contents.py"
    "tests/test_integration.py"
    # Don't test the example
    "tests/test_example_scripts.py"
    # Tests require clang extension
    "tests/utils_test.py"
  ];

  meta = {
    description = "Module for finding the timezone of any point on earth (coordinates) offline";
    homepage = "https://github.com/MrMinimal64/timezonefinder";
<<<<<<< HEAD
    changelog = "https://github.com/jannikmi/timezonefinder/blob/${src.tag}/CHANGELOG.rst";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/jannikmi/timezonefinder/blob/${src.tag}/CHANGELOG.rst";
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/jannikmi/timezonefinder/blob/${finalAttrs.src.tag}/CHANGELOG.rst";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
    mainProgram = "timezonefinder";
  };
})
