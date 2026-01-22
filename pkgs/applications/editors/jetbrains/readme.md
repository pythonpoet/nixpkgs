This directory contains the build expressions needed to build any of the JetBrains IDEs.
The jdk is in `pkgs/development/compilers/jetbrains-jdk`.

## Tests:
- To test the build process of every IDE (as well as the process for adding plugins), build `jetbrains.plugins.tests.empty`.
- To test that plugins are correctly stored in the plugins directory, build `jetbrains.plugins.tests.stored-correctly`.

## How to use plugins:
 - Pass your IDE package and a list of plugin packages to `jetbrains.plugins.addPlugins`.
   E.g. `pkgs.jetbrains.plugins.addPlugins pkgs.jetbrains.idea [ ideavim ]`
 - The list has to contain contain drvs giving the directory contents of the plugin or a single `.jar` (executable).

Nixpkgs does not package Jetbrains plugins, however you can use third-party sources, such as
[nix-jetbrains-plugins](https://github.com/nix-community/nix-jetbrains-plugins).
Note that some plugins may not work without modification, if they are packaged in a way that is incompatible with NixOS.
You can try installing such plugins from within the IDE instead.

<<<<<<< HEAD
## How to update stuff:
 - Run ./bin/update_bin.py, this will update binary IDEs and plugins, and automatically commit them
 - Source builds need a bit more effort, as they **aren't automated at the moment**:
   - Run ./source/update.py ./source/sources.json ./bin/versions.json. This will update the source version to the version of their corresponding binary packages.
   - Run these commands respectively:
     - `nix build .#jetbrains.idea-oss.src.src && ./source/build_maven.py source/idea_maven_artefacts.json result/` for IDEA
     - `nix build .#jetbrains.pycharm-oss.src.src && ./source/build_maven.py source/pycharm_maven_artefacts.json result/` for PyCharm
   - Update `brokenPlugins` timestamp and hash (from https://web.archive.org/web/*/https://plugins.jetbrains.com/files/brokenPlugins.json)
   - Do a test build
     - Notice that sometimes a newer Kotlin version is required to build from source, if build fails, first check the recommended Kotlin version in `.idea/kotlinc.xml` in the IDEA source root
     - Feel free to update the Kotlin version to a compatible one
   - If it succeeds, make a commit
   - Run ./plugins/update_plugins.py, this will update plugins and automatically commit them
   - make a PR/merge
   - If it fails, ping/message GenericNerdyUsername or the nixpkgs Jetbrains maintainer team
||||||| 213fed0310e3
## How to update stuff:
 - Run ./bin/update_bin.py, this will update binary IDEs and plugins, and automatically commit them
 - Source builds need a bit more effort, as they **aren't automated at the moment**:
   - Run ./source/update.py ./source/ides.json ./bin/versions.json. This will update the source version to the version of their corresponding binary packages.
   - Run these commands respectively:
     - `nix build .#jetbrains.idea-community-src.src.src && ./source/build_maven.py source/idea_maven_artefacts.json result/` for IDEA
     - `nix build .#jetbrains.pycharm-community-src.src.src && ./source/build_maven.py source/pycharm_maven_artefacts.json result/` for PyCharm
   - Update `brokenPlugins` timestamp and hash (from https://web.archive.org/web/*/https://plugins.jetbrains.com/files/brokenPlugins.json)
   - Do a test build
     - Notice that sometimes a newer Kotlin version is required to build from source, if build fails, first check the recommended Kotlin version in `.idea/kotlinc.xml` in the IDEA source root
     - Feel free to update the Kotlin version to a compatible one
   - If it succeeds, make a commit
   - Run ./plugins/update_plugins.py, this will update plugins and automatically commit them
   - make a PR/merge
   - If it fails, ping/message GenericNerdyUsername or the nixpkgs Jetbrains maintainer team
=======
### Example derivations:

#### "Normal" plugin

```nix
fetchzip {
  url = "https://plugins.jetbrains.com/files/8607/786671/NixIDEA-0.4.0.18.zip";
  hash = "sha256-JShheBoOBiWM9HubMUJvBn4H3DnWykvqPyrmetaCZiM=";
}
```
#### "Single JAR file" plugin

```nix
fetchurl {
  executable = true;
  url = "https://plugins.jetbrains.com/files/7425/760442/WakaTime.jar";
  hash = "sha256-DobKZKokueqq0z75d2Fo3BD8mWX9+LpGdT9C7Eu2fHc=";
}
```

## How to update IDEs:
 - Run `./updater/main.py`.
   This will update binary and source IDEs.
   After this you can commit them.
   - See `./updater/main.py --help` for additional flags.
   - The IDEs have `passthru.updateScript` set up to run `./updater/main.py`.
     The script then uses the `UPDATE_NIX_*` environment variables as documented.

To keep things simple, the update script will search for the following markers and may replace any content between them:
- `update-script-start: urls` / `update-script-end: urls`: URLs for binary IDEs
- `update-script-start: version` / `update-script-end: version`: Version and build number for binary IDEs
- `update-script-start: source-args` / `update-script-end: source-args`: Arguments for `mkJetBrainsSource` for source IDEs.

Any comments or other manual changes between these markers will be removed when the script runs.
>>>>>>> master

## How to add an IDE:
<<<<<<< HEAD
 - Make dummy entries in `bin/versions.json` (make sure to set the version to something older than the real one)
 - Run `bin/update_bin.py`
 - Add an entry in `ides.json`
 - Add an entry in `default.nix`
||||||| 213fed0310e3
 - Make dummy entries in `bin/versions.json` (make sure to set the version to something older than the real one)
 - Run `bin/update_bin.py`
 - Add an entry in `bin/ides.json`
 - Add an entry in `default.nix`
=======
 - Add a new derivation in `ides/`
 - Add an entry to the URL templates in `updater/updateInfo.json`
 - Add it to `default.nix`
>>>>>>> master

### TODO:
 - drop the community IDEs
 - Switch `mkJetbrainsProduct` to use `lib.extendMkDerivation`, see also:
   - https://github.com/NixOS/nixpkgs/pull/475183#discussion_r2655305961
   - https://github.com/NixOS/nixpkgs/pull/475183#discussion_r2655348886
 - move PyCharm overrides to a common place outside of `default.nix`
 - package `patchSharedLibs` from `default.nix` as a hook
 - cleanup this TODO list, especially the following points, which have been here since 2023
 - replace `libxcrypt-legacy` with `libxcrypt` when supported
 - make `jetbrains-remote-dev.patch` cleaner
 - is extraLdPath needed for IDEA?
 - from source builds:
   - remove timestamps in output `.jar` of `jps-bootstrap`
   - automated update scripts
   - fetch `.jar` s from stuff built in nixpkgs when available
     - what stuff built in nixpkgs provides `.jar`s we care about?
       - kotlin
   - make `configurePhase` respect `$NIX_BUILD_CORES`
   - make the subdir of the resulting tar.gz always have a release number (2023.2.2) instead of a build number (232.9921.89)
 - jdk:
   - build on darwin
   - use chromium stuff built by nixpkgs for jcef?
   - make `buildPhase` respect `$NIX_BUILD_CORES`
   - automated update script?
 - on `aarch64-linux`:
   - from source build
   - see if build (binary or source) works without expat
 - on `x86_64-darwin`:
   - from source build
 - on `aarch64-darwin`:
   - from source build
