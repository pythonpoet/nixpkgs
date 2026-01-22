{
  lib,
  buildPythonPackage,
  fetchPypi,
  google-api-core,
  mock,
  proto-plus,
  protobuf,
  pytest-asyncio,
  pytestCheckHook,
  setuptools,
}:

buildPythonPackage (finalAttrs: {
  pname = "google-cloud-texttospeech";
  version = "2.34.0";
  pyproject = true;

  src = fetchPypi {
    pname = "google_cloud_texttospeech";
    inherit (finalAttrs) version;
    hash = "sha256-ZYN8O8co83KQAJ2++JLfh+rkWtgJBVWQltEQeCIHT2I=";
  };

  build-system = [ setuptools ];

  dependencies = [
    google-api-core
    proto-plus
    protobuf
  ]
  ++ google-api-core.optional-dependencies.grpc;

  nativeCheckInputs = [
    mock
    pytest-asyncio
    pytestCheckHook
  ];

  disabledTests = [
    # Tests that require credentials
    "test_list_voices"
    "test_synthesize_speech"
  ];

  pythonImportsCheck = [
    "google.cloud.texttospeech"
    "google.cloud.texttospeech_v1"
    "google.cloud.texttospeech_v1beta1"
  ];

  meta = {
    description = "Google Cloud Text-to-Speech API client library";
    homepage = "https://github.com/googleapis/google-cloud-python/tree/main/packages/google-cloud-texttospeech";
<<<<<<< HEAD
    changelog = "https://github.com/googleapis/google-cloud-python/blob/google-cloud-texttospeech-v${version}/packages/google-cloud-texttospeech/CHANGELOG.md";
    license = lib.licenses.asl20;
||||||| 213fed0310e3
    changelog = "https://github.com/googleapis/google-cloud-python/blob/google-cloud-texttospeech-v${version}/packages/google-cloud-texttospeech/CHANGELOG.md";
    license = licenses.asl20;
=======
    changelog = "https://github.com/googleapis/google-cloud-python/blob/google-cloud-texttospeech-v${finalAttrs.version}/packages/google-cloud-texttospeech/CHANGELOG.md";
    license = lib.licenses.asl20;
>>>>>>> master
    maintainers = [ ];
  };
})
