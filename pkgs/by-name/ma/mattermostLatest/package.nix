{
  mattermost,
}:

mattermost.override {
  versionInfo = {
    # Latest, non-RC releases only.
    # If the latest is an ESR (Extended Support Release),
    # duplicate it here to facilitate the update script.
    # See https://docs.mattermost.com/about/mattermost-server-releases.html
    # and make sure the version regex is up to date here.
    # Ensure you also check ../mattermost/package.nix for ESR releases.
    regex = "^v(11\\.[0-9]+\\.[0-9]+)$";
<<<<<<< HEAD
    version = "11.2.1";
    srcHash = "sha256-y92zzL8yHlDxOStvAr1Mu+PPhTVlVQueBNtm4dhC/4w=";
    vendorHash = "sha256-mvQivHijLEdfTk7QzlfWQQn9S/9lMfrI+jSKKz0bh3M=";
    npmDepsHash = "sha256-YuJ0IfvhWb6kzBoTMYWV3mUhMuhrAelKoyXlmnQJovo=";
||||||| 213fed0310e3
    version = "11.0.5";
    srcHash = "sha256-rycML/NL/0fA1OEdE8krHPo5+3DxSaQWoEV4UDfRK5E=";
    vendorHash = "sha256-QlBq8YlphD2YuOrdnhW8g5XXeMkESVDRvKg6i5MGA0k=";
    npmDepsHash = "sha256-F0LzT1Ko95Zm3BZu5/P/Tz1dkd+l3FWNtFw+p0NQ5Xw=";
=======
    version = "11.3.0";
    srcHash = "sha256-D5LR3kk9HO8vuvykCgaV5k5Y/M7t63afxXj1iUBS1j8=";
    vendorHash = "sha256-3Ic8ogcLLzcFOmBzhFnsh16hVvhyIsfDeNgZevQlL9A=";
    npmDepsHash = "sha256-w54D5HMLW5wP6ercgWXv3Hb7Ayrj3M1SvNoUu1aU2Bk=";
>>>>>>> master
    lockfileOverlay = ''
      unlock(.; "@floating-ui/react"; "channels/node_modules/@floating-ui/react")
    '';
    autoUpdate = ./package.nix;
  };
}
