{
  lib,
  fetchFromGitHub,
  buildHomeAssistantComponent,
  ulid-transform,
}:

buildHomeAssistantComponent rec {
  owner = "basnijholt";
  domain = "adaptive_lighting";
  version = "1.30.1";

  src = fetchFromGitHub {
    owner = "basnijholt";
    repo = "adaptive-lighting";
    tag = "v${version}";
    hash = "sha256-pmI0jZxIjSiA9P5+0hRCujHE53WprvkAo6jp/IOpJ88=";
  };

  dependencies = [
    ulid-transform
  ];

<<<<<<< HEAD
  meta = {
    changelog = "https://github.com/basnijholt/adaptive-lighting/releases/tag/${version}";
||||||| 213fed0310e3
  meta = with lib; {
    changelog = "https://github.com/basnijholt/adaptive-lighting/releases/tag/${version}";
=======
  meta = {
    changelog = "https://github.com/basnijholt/adaptive-lighting/releases/tag/${src.tag}";
>>>>>>> master
    description = "Home Assistant Adaptive Lighting Plugin - Sun Synchronized Lighting";
    homepage = "https://github.com/basnijholt/adaptive-lighting";
    maintainers = with lib.maintainers; [ mindstorms6 ];
    license = lib.licenses.asl20;
  };
}
