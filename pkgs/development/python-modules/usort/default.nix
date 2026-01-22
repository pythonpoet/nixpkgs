{
  lib,
  attrs,
  buildPythonPackage,
  click,
  fetchFromGitHub,
  hatch-vcs,
  hatchling,
  libcst,
  moreorless,
  stdlibs,
  toml,
  trailrunner,
  unittestCheckHook,
  volatile,
}:

buildPythonPackage (finalAttrs: {
  pname = "usort";
  version = "1.2.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "facebook";
    repo = "usort";
    tag = "v${finalAttrs.version}";
    hash = "sha256-hoBk8KAml/YOscno9605I3t4z10vQPlh22wH1XHcQqY=";
  };

  build-system = [
    hatch-vcs
    hatchling
  ];

  dependencies = [
    attrs
    click
    libcst
    moreorless
    stdlibs
    toml
    trailrunner
  ];

  nativeCheckInputs = [
    unittestCheckHook
    volatile
  ];

  pythonImportsCheck = [ "usort" ];

  meta = {
    description = "Safe, minimal import sorting for Python projects";
    homepage = "https://github.com/facebook/usort";
<<<<<<< HEAD
    changelog = "https://github.com/facebook/usort/blob/${src.tag}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/facebook/usort/blob/${src.tag}/CHANGELOG.md";
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/facebook/usort/blob/${finalAttrs.src.tag}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
    mainProgram = "usort";
  };
})
