{
  lib,
  buildPythonPackage,
  fetchPypi,
  pytestCheckHook,
}:

buildPythonPackage rec {
  pname = "dronecan";
  version = "1.0.27";
  format = "setuptools";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-m6xfk/2pKfzbr0fu2GUjJnRcicoZDWzhrGJ6DDs2rBw=";
  };

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "dronecan" ];

  meta = {
    description = "Python implementation of the DroneCAN v1 protocol stack";
    mainProgram = "dronecan_bridge.py";
    longDescription = ''
      DroneCAN is a lightweight protocol designed for reliable communication in aerospace and robotic applications via CAN bus.
    '';
    homepage = "https://dronecan.github.io/";
<<<<<<< HEAD
    license = lib.licenses.mit;
    teams = [ lib.teams.ororatech ];
||||||| 213fed0310e3
    license = licenses.mit;
    teams = [ teams.ororatech ];
=======
    license = lib.licenses.mit;
>>>>>>> master
  };
}
