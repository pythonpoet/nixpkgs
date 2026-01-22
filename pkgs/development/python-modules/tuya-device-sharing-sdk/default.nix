{
  lib,
  buildPythonPackage,
  cryptography,
  fetchFromGitHub,
  paho-mqtt,
  requests,
  setuptools,
}:

buildPythonPackage (finalAttrs: {
  pname = "tuya-device-sharing-sdk";
  version = "0.2.9";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "tuya";
    repo = "tuya-device-sharing-sdk";
    tag = finalAttrs.version;
    hash = "sha256-kNWg+AXISThwK14ByObUr+/4GMntrZgtEEMNpw/HjLw=";
  };

  build-system = [ setuptools ];

  dependencies = [
    cryptography
    paho-mqtt
    requests
  ];

  doCheck = false; # no tests

<<<<<<< HEAD
  meta = {
||||||| 213fed0310e3
  meta = with lib; {
=======
  pythonImportsCheck = [ "tuya_sharing" ];

  meta = {
>>>>>>> master
    description = "Tuya Device Sharing SDK";
    homepage = "https://github.com/tuya/tuya-device-sharing-sdk";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ aciceri ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ aciceri ];
=======
    changelog = "https://github.com/tuya/tuya-device-sharing-sdk/releases/tag/${finalAttrs.version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ aciceri ];
>>>>>>> master
  };
})
