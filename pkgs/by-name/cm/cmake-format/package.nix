{
  lib,
  python3Packages,
  fetchPypi,
}:

python3Packages.buildPythonApplication rec {
  pname = "cmake-format";
  version = "0.6.13";
  # The source distribution does not build because of missing files.
  format = "wheel";

  src = fetchPypi {
    inherit version;
    format = "wheel";
    pname = "cmakelang";
    sha256 = "0kmggnfbv6bba75l3zfzqwk0swi90brjka307m2kcz2w35kr8jvn";
  };

  dependencies = with python3Packages; [
    autopep8
    flake8
    jinja2
    pylint
    pyyaml
    six
  ];

  doCheck = false;

  meta = {
    description = "Source code formatter for cmake listfiles";
    homepage = "https://github.com/cheshirekow/cmake_format";
<<<<<<< HEAD:pkgs/development/tools/cmake-format/default.nix
    license = lib.licenses.gpl3;
    maintainers = [ lib.maintainers.tobim ];
||||||| 213fed0310e3:pkgs/development/tools/cmake-format/default.nix
    license = licenses.gpl3;
    maintainers = [ maintainers.tobim ];
=======
    license = lib.licenses.gpl3;
    maintainers = with lib.maintainers; [ tobim ];
>>>>>>> master:pkgs/by-name/cm/cmake-format/package.nix
    mainProgram = "cmake-format";
<<<<<<< HEAD:pkgs/development/tools/cmake-format/default.nix
    platforms = lib.platforms.all;
||||||| 213fed0310e3:pkgs/development/tools/cmake-format/default.nix
    platforms = platforms.all;
=======
>>>>>>> master:pkgs/by-name/cm/cmake-format/package.nix
  };
}
