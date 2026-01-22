{
  buildTeleport,
  buildGoModule,
  wasm-bindgen-cli_0_2_95,
  withRdpClient ? true,
  extPatches ? [ ],
}:

buildTeleport {
<<<<<<< HEAD
  version = "17.7.12";
  hash = "sha256-o4bepzHmPx9TfDBz0QsqQ9nd8o/WV1UTRDBnT1wM2yE=";
  vendorHash = "sha256-m4oeFuH+60UFBkK6BHil4X8BSHwCVrCJ0i0b5eNJLYE=";
  cargoHash = "sha256-qz8gkooQTuBlPWC4lHtvBQpKkd+nEZ0Hl7AVg9JkPqs=";
  pnpmHash = "sha256-I+uNfC9aAuFuCqRFdp442pW25F1G7rZwl+1s00i/wq0=";
||||||| 213fed0310e3
  version = "17.7.9";
  hash = "sha256-qS0QWSbhyhBEJTEcJGEbomhsH4hkcLYJlvsaQeBIH7A=";
  vendorHash = "sha256-ZxJPzqvSGjc4AS5CPuSKCLWVvqcpqlMUUMtSqWn37o0=";
  cargoHash = "sha256-qz8gkooQTuBlPWC4lHtvBQpKkd+nEZ0Hl7AVg9JkPqs=";
  pnpmHash = "sha256-+240TF1+wHw2HIt4GrhnknL3yxLqQbO+atNUkf/vh6Q=";
=======
  version = "17.7.14";
  hash = "sha256-k8ZleEYaH1Zh4go8QQPbfoAn1fD/YaHfk6Q671pQlIM=";
  vendorHash = "sha256-GTv4nb4wfVfcfjnK0dawJIAP0eSzIWibawqygUSzDxc=";
  cargoHash = "sha256-EnIdf/3idwoQGJd6edQtWaXzVC1Gkwf8X2w2Zq80KGA=";
  pnpmHash = "sha256-bublGuaTIOh0YdYIgSFfnE3E16sn4ktNCGPXoRIxxHY=";
>>>>>>> master

  wasm-bindgen-cli = wasm-bindgen-cli_0_2_95;
  inherit buildGoModule withRdpClient extPatches;
}
