{ grafanaPlugin, lib }:

grafanaPlugin {
  pname = "marcusolsson-json-datasource";
<<<<<<< HEAD
  version = "1.3.24";
  zipHash = "sha256-gKFy7T5FQU2OUGBDokNWj0cT4EuOLLMcOFezlArtdww=";
  meta = {
||||||| 213fed0310e3
  version = "1.3.24";
  zipHash = "sha256-gKFy7T5FQU2OUGBDokNWj0cT4EuOLLMcOFezlArtdww=";
  meta = with lib; {
=======
  version = "1.3.25";
  zipHash = "sha256-6F6ECRZT8l3sWXn5KEcT2QRIIi3o8AULbV4InFm1hTo=";
  meta = {
>>>>>>> master
    description = "Grafana JSON Datasource plugin empowers you to seamlessly integrate JSON data into Grafana";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ nagisa ];
    platforms = lib.platforms.unix;
  };
}
