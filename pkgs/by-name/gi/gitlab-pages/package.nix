{
  buildGoModule,
  lib,
  fetchFromGitLab,
}:

buildGoModule rec {
  pname = "gitlab-pages";
<<<<<<< HEAD
  version = "18.6.2";
||||||| 213fed0310e3
  version = "18.6.0";
=======
  version = "18.6.3";
>>>>>>> master

  # nixpkgs-update: no auto update
  src = fetchFromGitLab {
    owner = "gitlab-org";
    repo = "gitlab-pages";
    rev = "v${version}";
<<<<<<< HEAD
    hash = "sha256-orEp/fkLmk0wKC8ceHesqYfA6yIDuxvFKX09MzA5fnU=";
||||||| 213fed0310e3
    hash = "sha256-ndxdgvf+mjt6PYQpEvyinEP64qRVB5lQXvtgR1eUjWs=";
=======
    hash = "sha256-+MxG6cWZfNN1Kfx0eLEevWR8q23pnsmS73B4aquKrSc=";
>>>>>>> master
  };

  vendorHash = "sha256-AL6V2LPzCGo/7IuY8msip35OScfocp3zO2ZzM8cZfnU=";
  subPackages = [ "." ];

  ldflags = [
    "-X"
    "main.VERSION=${version}"
  ];

  meta = {
    description = "Daemon used to serve static websites for GitLab users";
    mainProgram = "gitlab-pages";
    homepage = "https://gitlab.com/gitlab-org/gitlab-pages";
    changelog = "https://gitlab.com/gitlab-org/gitlab-pages/-/blob/v${version}/CHANGELOG.md";
    license = lib.licenses.mit;
    teams = [ lib.teams.gitlab ];
  };
}
