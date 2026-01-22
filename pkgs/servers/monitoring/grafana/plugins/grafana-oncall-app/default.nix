{ grafanaPlugin, lib }:

grafanaPlugin {
  pname = "grafana-oncall-app";
<<<<<<< HEAD
  version = "1.16.6";
  zipHash = "sha256-n5V3CkTLXKKmyz12/UbYWIksSC9+EBj3/V4y+H5jyUE=";
  meta = {
||||||| 213fed0310e3
  version = "1.16.6";
  zipHash = "sha256-n5V3CkTLXKKmyz12/UbYWIksSC9+EBj3/V4y+H5jyUE=";
  meta = with lib; {
=======
  version = "1.16.9";
  zipHash = "sha256-qAcDKmOGuU7ZyO5wI13xODJ7KazeCnA9v3AC+i9Eq7w=";
  meta = {
>>>>>>> master
    description = "Developer-friendly incident response for Grafana";
<<<<<<< HEAD
    license = lib.licenses.agpl3Only;
    teams = [ lib.teams.fslabs ];
    platforms = lib.platforms.unix;
||||||| 213fed0310e3
    license = licenses.agpl3Only;
    teams = [ lib.teams.fslabs ];
    platforms = platforms.unix;
=======
    license = lib.licenses.agpl3Only;
    maintainers = with lib.maintainers; [ lpostula ];
    platforms = lib.platforms.unix;
>>>>>>> master
  };
}
