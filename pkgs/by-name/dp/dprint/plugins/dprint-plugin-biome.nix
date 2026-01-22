{ mkDprintPlugin }:
mkDprintPlugin {
<<<<<<< HEAD
  description = "Biome (JS/TS) wrapper plugin";
  hash = "sha256-HYbQ0lyOe91AI2In9YZ6SXNzgEmgYHBvgtU/iVq+Gvc=";
||||||| 213fed0310e3
  description = "Biome (JS/TS) wrapper plugin";
  hash = "sha256-V8lXwGRWGvl/g2kjqL8Ei1N7V0nuTP2WcLFWJvC7D+A=";
=======
  description = "Biome (JS/TS/JSON) wrapper plugin";
  hash = "sha256-P5mAFdr+vw6ogju0Qg6E9sbuTASaZD1Wr4BHt70lCy8=";
>>>>>>> master
  initConfig = {
    configExcludes = [ "**/node_modules" ];
    configKey = "biome";
    fileExtensions = [
      "ts"
      "tsx"
      "js"
      "jsx"
      "cjs"
      "mjs"
      "json"
    ];
  };
  pname = "dprint-plugin-biome";
  updateUrl = "https://plugins.dprint.dev/dprint/biome/latest.json";
<<<<<<< HEAD
  url = "https://plugins.dprint.dev/biome-0.11.7.wasm";
  version = "0.11.7";
||||||| 213fed0310e3
  url = "https://plugins.dprint.dev/biome-0.11.6.wasm";
  version = "0.11.6";
=======
  url = "https://plugins.dprint.dev/biome-0.11.10.wasm";
  version = "0.11.10";
>>>>>>> master
}
