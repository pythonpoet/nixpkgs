{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  poetry-core,
  crossandra,
  dahlia,
}:

buildPythonPackage (finalAttrs: {
  pname = "samarium";
  version = "0.6.2";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "samarium-lang";
    repo = "samarium";
    tag = finalAttrs.version;
    hash = "sha256-sOkJ67B8LaIA2cwCHaFnc16lMG8uaegBJCzF6Li77vk=";
  };

  build-system = [ poetry-core ];
  dependencies = [
    crossandra
    dahlia
  ];

<<<<<<< HEAD
  meta = {
    changelog = "https://github.com/samarium-lang/samarium/blob/${src.rev}/CHANGELOG.md";
||||||| 213fed0310e3
  meta = with lib; {
    changelog = "https://github.com/samarium-lang/samarium/blob/${src.rev}/CHANGELOG.md";
=======
  meta = {
    changelog = "https://github.com/samarium-lang/samarium/blob/${finalAttrs.src.tag}/CHANGELOG.md";
>>>>>>> master
    description = "Samarium Programming Language";
    license = lib.licenses.mit;
    homepage = "https://samarium-lang.github.io/Samarium";
    maintainers = with lib.maintainers; [ sigmanificient ];
  };
})
