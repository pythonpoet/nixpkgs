{
  lib,
  python3,
  fetchFromGitHub,
}:

python3.pkgs.buildPythonApplication rec {
  pname = "ghstack";
  version = "0.13.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "ezyang";
    repo = "ghstack";
<<<<<<< HEAD
    tag = version;
    hash = "sha256-pLKwDezkwGrqYgP4WnIl5nAam6bMNO6BK+xbxhp7Aq8=";
||||||| 213fed0310e3
    rev = "fa7e7023d798aad6b115b88c5ad67ce88a4fc2a6";
    hash = "sha256-Ywwjeupa8eE/vkrbl5SIbvQs53xaLnq9ieWRFwzmuuc=";
=======
    tag = version;
    hash = "sha256-cRdwX5BVdpGjLPR0tpFYo62HYu/lmUzJE+vyxI9A4O8=";
>>>>>>> master
  };

  postPatch = ''
    substituteInPlace pyproject.toml \
      --replace-fail 'requires = ["uv_build>=0.6,<0.7"]' 'requires = ["uv_build>=0.6"]'
  '';

  build-system = [ python3.pkgs.uv-build ];

  dependencies = with python3.pkgs; [
    aiohttp
    click
    flake8
    importlib-metadata
    requests
    typing-extensions
  ];

  pythonImportsCheck = [ "ghstack.cli" ];

  meta = {
    description = "Submit stacked diffs to GitHub on the command line";
    homepage = "https://github.com/ezyang/ghstack";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      munksgaard
      shikanime
    ];
    mainProgram = "ghstack";
  };
}
