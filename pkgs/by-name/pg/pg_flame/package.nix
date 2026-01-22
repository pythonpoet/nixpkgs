{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "pg_flame";
  version = "1.2";

  src = fetchFromGitHub {
    owner = "mgartner";
    repo = "pg_flame";
    rev = "v${version}";
    hash = "sha256-glvIv9GHIbp6IZUvZo9fyvkJ6QR03nMlrAOpZ3HfA6g=";
  };

  vendorHash = "sha256-ReVaetR3zkLLLc3d0EQkBAyUrxwBn3iq8MZAGzkQfeY=";

  meta = {
    description = "Flamegraph generator for Postgres EXPLAIN ANALYZE output";
    homepage = "https://github.com/mgartner/pg_flame";
<<<<<<< HEAD
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ Br1ght0ne ];
||||||| 213fed0310e3
    license = licenses.asl20;
    maintainers = with maintainers; [ Br1ght0ne ];
=======
    license = lib.licenses.asl20;
>>>>>>> master
    mainProgram = "pg_flame";
  };
}
