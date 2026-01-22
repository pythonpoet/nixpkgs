{
  lib,
  fetchFromGitHub,
  python3Packages,
}:

python3Packages.buildPythonApplication (finalAttrs: {
  pname = "peru";
  version = "1.3.5";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "buildinspace";
    repo = "peru";
    tag = finalAttrs.version;
    hash = "sha256-RFf4JWjt5FqM3At0boBNmg4GStLehyxuueA8hCc0sxg=";
  };

  build-system = with python3Packages; [ hatchling ];

  dependencies = with python3Packages; [
    pyyaml
    docopt
  ];

  # No tests in archive
  doCheck = false;

  pythonImportsCheck = [ "peru" ];

<<<<<<< HEAD
  meta = {
    homepage = "https://github.com/buildinspace/peru";
||||||| 213fed0310e3
  meta = with lib; {
    homepage = "https://github.com/buildinspace/peru";
=======
  meta = {
>>>>>>> master
    description = "Tool for including other people's code in your projects";
<<<<<<< HEAD
    license = lib.licenses.mit;
    platforms = lib.platforms.unix;
||||||| 213fed0310e3
    license = licenses.mit;
    platforms = platforms.unix;
=======
    homepage = "https://github.com/buildinspace/peru";
    changelog = "https://github.com/buildinspace/peru/releases/tag/${finalAttrs.src.tag}";
    license = lib.licenses.mit;
    maintainers = [ ];
    platforms = lib.platforms.unix;
>>>>>>> master
    mainProgram = "peru";
  };
})
