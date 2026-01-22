<<<<<<< HEAD
{
  buildPythonPackage,
  python-octaviaclient,
  python-openstackclient,
  hacking,
  requests-mock,
  doc8,
  docutils,
  pygments,
  subunit,
  oslotest,
  stestr,
  testscenarios,
}:

buildPythonPackage {
  pname = "python-octaviaclient-tests";
  inherit (python-octaviaclient) version src;
  format = "other";

  dontBuild = true;
  dontInstall = true;

  nativeCheckInputs = [
    python-octaviaclient
    python-openstackclient
    hacking
    requests-mock
    doc8
    docutils
    pygments
    subunit
    oslotest
    stestr
    testscenarios
  ];

  checkPhase = ''
    runHook preCheck

    stestr run

    runHook postCheck
  '';
}
||||||| 213fed0310e3
=======
{
  buildPythonPackage,
  python-octaviaclient,
  python-openstackclient,
  hacking,
  requests-mock,
  doc8,
  docutils,
  pygments,
  subunit,
  oslotest,
  stestr,
  testscenarios,
}:

buildPythonPackage {
  pname = "python-octaviaclient-tests";
  inherit (python-octaviaclient) version src;
  pyproject = false;

  dontBuild = true;
  dontInstall = true;

  nativeCheckInputs = [
    python-octaviaclient
    python-openstackclient
    hacking
    requests-mock
    doc8
    docutils
    pygments
    subunit
    oslotest
    stestr
    testscenarios
  ];

  checkPhase = ''
    runHook preCheck

    stestr run

    runHook postCheck
  '';
}
>>>>>>> master
