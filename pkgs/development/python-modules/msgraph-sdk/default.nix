{
  lib,
  azure-identity,
  buildPythonPackage,
  fetchFromGitHub,
  flit-core,
  microsoft-kiota-abstractions,
  microsoft-kiota-authentication-azure,
  microsoft-kiota-http,
  microsoft-kiota-serialization-form,
  microsoft-kiota-serialization-json,
  microsoft-kiota-serialization-multipart,
  microsoft-kiota-serialization-text,
  msgraph-core,
}:

buildPythonPackage (finalAttrs: {
  pname = "msgraph-sdk";
  version = "1.52.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "microsoftgraph";
    repo = "msgraph-sdk-python";
    tag = "v${finalAttrs.version}";
    hash = "sha256-7HLPkyWlslMuYdoQ4K6Zm7YZ+qp93P/fZdxZrb4X6aI=";
  };

  build-system = [ flit-core ];

  dependencies = [
    azure-identity
    microsoft-kiota-abstractions
    microsoft-kiota-authentication-azure
    microsoft-kiota-http
    microsoft-kiota-serialization-form
    microsoft-kiota-serialization-json
    microsoft-kiota-serialization-multipart
    microsoft-kiota-serialization-text
    msgraph-core
  ];

  # Module doesn't have tests
  doCheck = false;

  pythonImportsCheck = [ "msgraph" ];

  meta = {
    description = "Microsoft Graph SDK for Python";
    homepage = "https://github.com/microsoftgraph/msgraph-sdk-python";
<<<<<<< HEAD
    changelog = "https://github.com/microsoftgraph/msgraph-sdk-python/blob/${src.tag}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/microsoftgraph/msgraph-sdk-python/blob/${src.tag}/CHANGELOG.md";
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/microsoftgraph/msgraph-sdk-python/blob/${finalAttrs.src.tag}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
  };
})
