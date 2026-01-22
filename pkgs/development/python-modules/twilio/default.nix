{
  lib,
  aiohttp-retry,
  aiohttp,
  aiounittest,
  buildPythonPackage,
  cryptography,
  django,
  fetchFromGitHub,
  mock,
  multidict,
  pyjwt,
  pyngrok,
  pytestCheckHook,
  pytz,
  requests,
  setuptools,
}:

buildPythonPackage (finalAttrs: {
  pname = "twilio";
  version = "9.9.1";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "twilio";
    repo = "twilio-python";
    tag = finalAttrs.version;
    hash = "sha256-ewG2VgxK8F2G/wogkGnhqZT9M9vrJu9Rdx4uXYNRhrI=";
  };

  build-system = [ setuptools ];

  dependencies = [
    aiohttp
    aiohttp-retry
    pyjwt
    pyngrok
    pytz
    requests
  ];

  nativeCheckInputs = [
    aiounittest
    cryptography
    django
    mock
    multidict
    pytestCheckHook
  ];

  disabledTests = [
    # Tests require network access
    "test_set_default_user_agent"
    "test_set_user_agent_extensions"
  ];

  disabledTestPaths = [
    # Tests require API token
    "tests/cluster/test_webhook.py"
    "tests/cluster/test_cluster.py"
  ];

  pythonImportsCheck = [ "twilio" ];

  meta = {
    description = "Twilio API client and TwiML generator";
    homepage = "https://github.com/twilio/twilio-python/";
<<<<<<< HEAD
    changelog = "https://github.com/twilio/twilio-python/blob/${src.tag}/CHANGES.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/twilio/twilio-python/blob/${src.tag}/CHANGES.md";
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/twilio/twilio-python/blob/${finalAttrs.src.tag}/CHANGES.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
  };
})
