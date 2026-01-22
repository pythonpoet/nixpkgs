{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:
rustPlatform.buildRustPackage (finalAttrs: {
  pname = "impala";
<<<<<<< HEAD
  version = "0.6.0";
||||||| 213fed0310e3
  version = "0.4.1";
=======
  version = "0.7.2";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "pythops";
    repo = "impala";
<<<<<<< HEAD
    rev = "v${version}";
    hash = "sha256-FU/8g2zTTHm3Sdbxt9761Z+a0zaJMdAMdHrJIwjUrYs=";
||||||| 213fed0310e3
    rev = "v${version}";
    hash = "sha256-CRnGycN2juXXNI1LhAH5HQbmXYatBZ0GxYKYgb5SBSE=";
=======
    rev = "v${finalAttrs.version}";
    hash = "sha256-kDXf+zrCfsYv+5P69BiZDBqaw9SM3JPCXV7KzpIEJn0=";
>>>>>>> master
  };

<<<<<<< HEAD
  cargoHash = "sha256-dpTLVlDxc9eK7GwbweODoJlrBZeYwVcv1fQ2UtYbg7k=";
||||||| 213fed0310e3
  cargoHash = "sha256-fBeSbJdFwT/ZwK2FTJQtZakKqMiAICMY2rkbNnYOGzU=";
=======
  cargoHash = "sha256-Zs3x7wWbO0LL1BjEAWb1UbztJJ6K6hXxgMBynHLri8A=";

  # fix for compilation of musl builds on aarch64
  # see https://github.com/NixOS/nixpkgs/issues/145726
  postPatch = ''
    rm .cargo/config.toml
  '';
>>>>>>> master

  meta = {
    description = "TUI for managing wifi";
    homepage = "https://github.com/pythops/impala";
    platforms = lib.platforms.linux;
    license = lib.licenses.gpl3Only;
<<<<<<< HEAD
    maintainers = with lib.maintainers; [
      nydragon
      bridgesense
    ];
||||||| 213fed0310e3
    maintainers = [ lib.maintainers.nydragon ];
=======
    maintainers = with lib.maintainers; [
      nydragon
      bridgesense
    ];
    mainProgram = "impala";
>>>>>>> master
  };
})
