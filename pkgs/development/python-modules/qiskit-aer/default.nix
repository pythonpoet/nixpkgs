{
  lib,
  stdenv,
  buildPythonPackage,
  fetchFromGitHub,
  blas,
  cmake,
  ninja,
  nlohmann_json,
  spdlog,
  numpy,
  pybind11,
  scikit-build,
  qiskit,
  psutil,
  scipy,
  python-dateutil,
}:

buildPythonPackage rec {
  pname = "qiskit-aer";
  version = "0.17.2";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "Qiskit";
    repo = "qiskit-aer";
    tag = version;
    hash = "sha256-aVmGoLMnDjV3iB9s4tvcL62zKvH/p70mqeGsxHzi3nc=";
  };

  dontUseCmakeConfigure = true;

  # build fails even if setting DISABLE_CONAN flag
  postPatch = ''
    sed -i -e '/conan/d' pyproject.toml
  '';

  nativeBuildInputs = [
    cmake
    ninja
  ];

  build-system = [
    pybind11
    scikit-build
  ];

  dependencies = [
    scipy
    numpy
    psutil
    python-dateutil
    qiskit
  ];

  buildInputs = [
    blas
    nlohmann_json
    spdlog
  ];

  preBuild = ''
    export DISABLE_CONAN=ON
  '';

  pythonImportsCheck = [
    "qiskit_aer"
    "qiskit_aer.primitives"
    "qiskit_aer.noise"
    "qiskit_aer.library"
    "qiskit_aer.backends.controller_wrappers"
  ];

  doCheck = false;

<<<<<<< HEAD
    # these fail for some builds. Haven't been able to reproduce error locally.
    "test_kraus_gate_noise"
    "test_backend_method_clifford_circuits_and_kraus_noise"
    "test_backend_method_nonclifford_circuit_and_kraus_noise"
    "test_kraus_noise_fusion"

    # Slow tests
    "test_paulis_1_and_2_qubits"
    "test_3d_oscillator"
    "_057"
    "_136"
    "_137"
    "_139"
    "_138"
    "_140"
    "_141"
    "_143"
    "_144"
    "test_sparse_output_probabilities"
    "test_reset_2_qubit"

    # Fails with 0.10.4
    "test_extended_stabilizer_sparse_output_probs"
  ];

  nativeCheckInputs = [
    pytestCheckHook
    ddt
    fixtures
    pytest-timeout
    qiskit-terra
    testtools
  ];

  pytestFlags = [
    "--timeout=30"
    "--durations=10"
  ];

  preCheck = ''
    # Tests include a compiled "circuit" which is auto-built in $HOME
    export HOME=$(mktemp -d)
    # move tests b/c by default try to find (missing) cython-ized code in /build/source dir
    cp -r $TMP/$sourceRoot/test $HOME

    # Add qiskit-aer compiled files to cython include search
    pushd $HOME
  '';

  postCheck = "popd";

  meta = {
    broken = true;
||||||| 213fed0310e3
    # these fail for some builds. Haven't been able to reproduce error locally.
    "test_kraus_gate_noise"
    "test_backend_method_clifford_circuits_and_kraus_noise"
    "test_backend_method_nonclifford_circuit_and_kraus_noise"
    "test_kraus_noise_fusion"

    # Slow tests
    "test_paulis_1_and_2_qubits"
    "test_3d_oscillator"
    "_057"
    "_136"
    "_137"
    "_139"
    "_138"
    "_140"
    "_141"
    "_143"
    "_144"
    "test_sparse_output_probabilities"
    "test_reset_2_qubit"

    # Fails with 0.10.4
    "test_extended_stabilizer_sparse_output_probs"
  ];

  nativeCheckInputs = [
    pytestCheckHook
    ddt
    fixtures
    pytest-timeout
    qiskit-terra
    testtools
  ];

  pytestFlags = [
    "--timeout=30"
    "--durations=10"
  ];

  preCheck = ''
    # Tests include a compiled "circuit" which is auto-built in $HOME
    export HOME=$(mktemp -d)
    # move tests b/c by default try to find (missing) cython-ized code in /build/source dir
    cp -r $TMP/$sourceRoot/test $HOME

    # Add qiskit-aer compiled files to cython include search
    pushd $HOME
  '';

  postCheck = "popd";

  meta = with lib; {
    broken = true;
=======
  meta = {
>>>>>>> master
    description = "High performance simulators for Qiskit";
    # broken on darwin for unknown reasons
    broken = stdenv.isDarwin;
    homepage = "https://qiskit.github.io/qiskit-aer/";
    downloadPage = "https://github.com/QISKit/qiskit-aer/releases";
<<<<<<< HEAD
    changelog = "https://qiskit.org/documentation/release_notes.html";
    license = lib.licenses.asl20;
||||||| 213fed0310e3
    changelog = "https://qiskit.org/documentation/release_notes.html";
    license = licenses.asl20;
=======
    changelog = "https://qiskit.github.io/qiskit-aer/release_notes.html";
    license = lib.licenses.asl20;
>>>>>>> master
    maintainers = [ ];
  };
}
