{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  stdenv,

  # build-system
  setuptools,

  # tests
  pytestCheckHook,
}:

buildPythonPackage (finalAttrs: {
  pname = "pysilero-vad";
  version = "3.2.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "rhasspy";
    repo = "pysilero-vad";
    tag = "v${finalAttrs.version}";
    hash = "sha256-cqjuU5JtsL+Fp3m3uzz8flrJEyn+JDUMWsXU0Ioh87U=";
  };

  build-system = [ setuptools ];

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "pysilero_vad" ];

  # aarch64-linux onnxruntime tries to get cpu information from /sys, which isn't available
  # inside the nix build sandbox.
  #doCheck = stdenv.buildPlatform.system != "aarch64-linux";
  dontUsePythonImportsCheck = stdenv.buildPlatform.system == "aarch64-linux";

<<<<<<< HEAD
  meta = {
||||||| 213fed0310e3
  meta = with lib; {
=======
  preCheck = ''
    # don't shadow the build result during tests
    rm -rf pysilero_vad
  '';

  meta = {
>>>>>>> master
    description = "Pre-packaged voice activity detector using silero-vad";
    homepage = "https://github.com/rhasspy/pysilero-vad";
<<<<<<< HEAD
    changelog = "https://github.com/rhasspy/pysilero-vad/blob/${src.tag}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ hexa ];
||||||| 213fed0310e3
    changelog = "https://github.com/rhasspy/pysilero-vad/blob/${src.tag}/CHANGELOG.md";
    license = licenses.mit;
    maintainers = with maintainers; [ hexa ];
=======
    changelog = "https://github.com/rhasspy/pysilero-vad/blob/${finalAttrs.src.tag}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ hexa ];
>>>>>>> master
  };
})
