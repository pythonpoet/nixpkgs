{
  lib,
  buildPythonPackage,
  fetchPypi,
  setuptools,
  pytestCheckHook,
}:

buildPythonPackage rec {
  pname = "toolz";
  version = "1.1.0";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-J6XHcNBowRDZ7ZMj8k8VQ+g7LzAKaHt4kcGm1Wtpe1s=";
  };

  postPatch = ''
    substituteInPlace pyproject.toml \
      --replace-fail '"setuptools-git-versioning >=2.0",' "" \
      --replace-fail 'dynamic = ["version"]' 'version = "${version}"'
  '';

  build-system = [
    setuptools
  ];

  nativeCheckInputs = [ pytestCheckHook ];

<<<<<<< HEAD
  disabledTests = [
    # https://github.com/pytoolz/toolz/issues/577
    "test_inspect_wrapped_property"
  ];

  meta = {
||||||| 213fed0310e3
  disabledTests = [
    # https://github.com/pytoolz/toolz/issues/577
    "test_inspect_wrapped_property"
  ];

  meta = with lib; {
=======
  meta = {
>>>>>>> master
    homepage = "https://github.com/pytoolz/toolz";
    changelog = "https://github.com/pytoolz/toolz/releases/tag/${version}";
    description = "List processing tools and functional utilities";
    license = lib.licenses.bsd3;
  };
}
