{
  lib,
  mkDiscoursePlugin,
  fetchFromGitHub,
}:

mkDiscoursePlugin {
  name = "discourse-docs";
  src = fetchFromGitHub {
    owner = "discourse";
    repo = "discourse-docs";
    rev = "f755032b6988c217da30025d7e281d07361bbc47";
    sha256 = "sha256-GOwLPbRLZ8F+hY4n+TAbN+DruaQgTzoM7KhVU9hfisM=";
  };
  meta = {
    homepage = "https://github.com/discourse/discourse-docs";
<<<<<<< HEAD
    maintainers = with lib.maintainers; [ dpausp ];
    license = lib.licenses.mit;
||||||| 213fed0310e3
    maintainers = with maintainers; [ dpausp ];
    license = licenses.mit;
=======
    license = lib.licenses.mit;
>>>>>>> master
    description = "Find and filter knowledge base topics";
  };
}
