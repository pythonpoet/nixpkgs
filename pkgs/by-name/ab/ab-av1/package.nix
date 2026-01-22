{
  lib,
  rustPlatform,
  fetchFromGitHub,
  installShellFiles,
  stdenv,
}:

rustPlatform.buildRustPackage rec {
  pname = "ab-av1";
<<<<<<< HEAD
  version = "0.10.2";
||||||| 213fed0310e3
  version = "0.10.1";
=======
  version = "0.10.3";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "alexheretic";
    repo = "ab-av1";
    tag = "v${version}";
<<<<<<< HEAD
    hash = "sha256-bVsEsQMQhXyDES5mlBHRK1Uf7UwbX6iKhTF17peokAk=";
||||||| 213fed0310e3
    hash = "sha256-uW5BXUNzk94bqSWQSaCiuSO8Angwt0eo4ZmvGRr/4S8=";
=======
    hash = "sha256-HSWu3gHpgCUkmr63mAi2Hd67Rap5vDZ/oHRh6O7y6uA=";
>>>>>>> master
  };

<<<<<<< HEAD
  cargoHash = "sha256-TDpNT62jkkP+g2w1HXmPJiblHXFOuAuzYRY5cpzRW/M=";
||||||| 213fed0310e3
  cargoHash = "sha256-oLmE+xkatgIDIu6mUJ49O9s6ULp0bvpWdBP8rEGb5yc=";
=======
  cargoHash = "sha256-jzEwblYsA7tgoJE6HhdtdDyOS50DyL87/J/T+cNKB3M=";
>>>>>>> master

  nativeBuildInputs = [ installShellFiles ];

  postInstall = lib.optionalString (stdenv.buildPlatform.canExecute stdenv.hostPlatform) ''
    installShellCompletion --cmd ab-av1 \
      --bash <($out/bin/ab-av1 print-completions bash) \
      --fish <($out/bin/ab-av1 print-completions fish) \
      --zsh <($out/bin/ab-av1 print-completions zsh)
  '';

  meta = {
    description = "AV1 re-encoding using ffmpeg, svt-av1 & vmaf";
    homepage = "https://github.com/alexheretic/ab-av1";
    changelog = "https://github.com/alexheretic/ab-av1/blob/${src.rev}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = [ ];
    mainProgram = "ab-av1";
  };
}
