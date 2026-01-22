{
  lib,
  stdenv,
  python3Packages,
  fetchFromGitea,
  runCommand,
  lctime,
  ngspice,
  writableTmpDirAsHomeHook,
}:

python3Packages.buildPythonApplication (finalAttrs: {
  pname = "lctime";
<<<<<<< HEAD
  version = "0.0.27";
||||||| 213fed0310e3
  version = "0.0.26";
=======
  version = "0.0.28";
>>>>>>> master
  pyproject = true;

  src = fetchFromGitea {
    domain = "codeberg.org";
    owner = "librecell";
    repo = "lctime";
<<<<<<< HEAD
    tag = version;
    hash = "sha256-KKZhsKNTr+J5+rLUdlwGMsUCa6NYY1X9yaujPe1c0Do=";
||||||| 213fed0310e3
    tag = version;
    hash = "sha256-oNmeV8r1dtO2y27jAJnlx4mKGjhzL07ad2yBdOLwgF0=";
=======
    tag = finalAttrs.version;
    hash = "sha256-Td56NtqcI8763hw/XVxLP7+qExraapN9ULD3ZolfR6M=";
>>>>>>> master
  };

  build-system = with python3Packages; [
    setuptools
  ];

  dependencies = with python3Packages; [
    joblib
    klayout
    liberty-parser
    networkx
    numpy
    scipy
    sympy
  ];

  optional-dependencies.debug = with python3Packages; [ matplotlib ];

  nativeCheckInputs = with python3Packages; [
    pytestCheckHook
    ngspice
  ];

  enabledTestPaths = [
    "src/lctime/*/*.py"
  ];

  disabledTestPaths = [
    # hangs indefinitely
    "src/lctime/characterization/test_ngspice_subprocess.py::test_ngspice_interactive_simple"
    "src/lctime/characterization/test_ngspice_subprocess.py::test_ngspice_subprocess_class"
  ]
  ++ lib.optionals stdenv.hostPlatform.isDarwin [
    # causes python to abort
    "src/lctime/characterization/test_ngspice_subprocess.py::test_simple_simulation"
    # broken pipe
    "src/lctime/characterization/test_ngspice_subprocess.py::test_interactive_subprocess"
  ];

  pythonImportsCheck = [
    "lctime"
  ];

  passthru = {
    tests =
      runCommand "lctime-tests"
        {
          nativeBuildInputs = [
            lctime
            ngspice
            writableTmpDirAsHomeHook
          ];
        }
        ''
          cd "$HOME"

          cp -R "${finalAttrs.src}/tests/"* .
          patchShebangs *.sh

          mkdir -p $out
          ./run_tests.sh &> $out/result.log
        '';
  };

  meta = {
    description = "Characterization tool for CMOS digital standard-cells";
    homepage = "https://codeberg.org/librecell/lctime";
    license = with lib.licenses; [
      agpl3Plus
      asl20
      cc-by-sa-40
      cc0
    ];
    changelog = "https://codeberg.org/librecell/lctime/releases/tag/${finalAttrs.src.tag}";
    maintainers = with lib.maintainers; [ eljamm ];
    teams = with lib.teams; [ ngi ];
    mainProgram = "lctime";
  };
})
