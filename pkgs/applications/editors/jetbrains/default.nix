<<<<<<< HEAD
let
  # `ides.json` is handwritten and contains information that doesn't change across updates, like maintainers and other metadata
  # `versions.json` contains everything generated/needed by the update script version numbers, build numbers and tarball hashes
  ideInfo = builtins.fromJSON (builtins.readFile ./ides.json);
  versions = builtins.fromJSON (builtins.readFile ./bin/versions.json);
in

||||||| 213fed0310e3
let
  # `ides.json` is handwritten and contains information that doesn't change across updates, like maintainers and other metadata
  # `versions.json` contains everything generated/needed by the update script version numbers, build numbers and tarball hashes
  ideInfo = builtins.fromJSON (builtins.readFile ./bin/ides.json);
  versions = builtins.fromJSON (builtins.readFile ./bin/versions.json);
in

=======
>>>>>>> master
{
  config,
  lib,
  config,
  stdenv,
  callPackage,

  python3,

  jdk,
  vmopts ? null,
  forceWayland ? false,
}:

let
  mkJetBrainsProduct = callPackage ./builder/default.nix { inherit jdk forceWayland vmopts; };
  mkJetBrainsSource = callPackage ./source/build.nix { };

  mkSrcIde =
    path: extras: callPackage path ({ inherit mkJetBrainsProduct mkJetBrainsSource; } // extras);

  _idea-oss = mkSrcIde ./ides/idea-oss.nix { };

<<<<<<< HEAD
  package = if stdenv.hostPlatform.isDarwin then ./bin/darwin.nix else ./bin/linux.nix;
  mkJetBrainsProductCore = callPackage package { inherit vmopts; };
  mkMeta = meta: fromSource: {
    inherit (meta) homepage longDescription;
    description =
      meta.description
      + lib.optionalString meta.isOpenSource (
        if fromSource then " (built from source)" else " (patched binaries from jetbrains)"
      );
    maintainers = map (x: lib.maintainers."${x}") meta.maintainers;
    teams = [ lib.teams.jetbrains ];
    license = if meta.isOpenSource then lib.licenses.asl20 else lib.licenses.unfree;
    sourceProvenance =
      if fromSource then
        [ lib.sourceTypes.fromSource ]
      else
        (
          if stdenv.hostPlatform.isDarwin then
            [ lib.sourceTypes.binaryNativeCode ]
          else
            [ lib.sourceTypes.binaryBytecode ]
        );
  };

  mkJetBrainsProduct =
    {
      pname,
      fromSource ? false,
      extraWrapperArgs ? [ ],
      extraLdPath ? [ ],
      extraBuildInputs ? [ ],
      extraTests ? { },
    }:
    mkJetBrainsProductCore {
      inherit
        pname
        extraLdPath
        jdk
        ;
      extraBuildInputs =
        extraBuildInputs
        ++ [ stdenv.cc.cc ]
        ++ lib.optionals stdenv.hostPlatform.isLinux [
          fontconfig
          libGL
          libX11
        ];
      extraWrapperArgs =
        extraWrapperArgs
        ++ lib.optionals (stdenv.hostPlatform.isLinux && forceWayland) [
          ''--add-flags "\''${WAYLAND_DISPLAY:+-Dawt.toolkit.name=WLToolkit}"''
        ];
      src =
        if fromSource then
          communitySources."${pname}"
        else
          fetchurl {
            url = products."${pname}".url;
            sha256 = products."${pname}".sha256;
          };
      version = if fromSource then communitySources."${pname}".version else products."${pname}".version;
      buildNumber =
        if fromSource then communitySources."${pname}".buildNumber else products."${pname}".build_number;
      inherit (ideInfo."${pname}") wmClass product;
      productShort = ideInfo."${pname}".productShort or ideInfo."${pname}".product;
      meta = mkMeta ideInfo."${pname}".meta fromSource;
      passthru.tests = extraTests // {
        plugins = callPackage ./plugins/tests.nix { ideName = pname; };
      };
      libdbm = communitySources."${pname}".libdbm or communitySources.idea-oss.libdbm;
      fsnotifier = communitySources."${pname}".fsnotifier or communitySources.idea-oss.fsnotifier;
    };

  communitySources = callPackage ./source { };

  buildIdea =
    args:
    mkJetBrainsProduct (
      args
      // {
        extraLdPath = [ zlib ];
        extraWrapperArgs = [
          ''--set M2_HOME "${maven}/maven"''
          ''--set M2 "${maven}/maven/bin"''
        ];
      }
    );

  buildPycharm =
    args:
    (mkJetBrainsProduct args).overrideAttrs (
      finalAttrs: previousAttrs:
      lib.optionalAttrs stdenv.hostPlatform.isLinux {
        buildInputs =
          with python3.pkgs;
          (previousAttrs.buildInputs or [ ])
          ++ [
            python3
            setuptools
          ];
        preInstall = ''
          echo "compiling cython debug speedups"
          if [[ -d plugins/python-ce ]]; then
              ${python3.interpreter} plugins/python-ce/helpers/pydev/setup_cython.py build_ext --inplace
          else
              ${python3.interpreter} plugins/python/helpers/pydev/setup_cython.py build_ext --inplace
          fi
        '';
        # See https://www.jetbrains.com/help/pycharm/2022.1/cython-speedups.html
||||||| 213fed0310e3
  package = if stdenv.hostPlatform.isDarwin then ./bin/darwin.nix else ./bin/linux.nix;
  mkJetBrainsProductCore = callPackage package { inherit vmopts; };
  mkMeta = meta: fromSource: {
    inherit (meta) homepage longDescription;
    description =
      meta.description
      + lib.optionalString meta.isOpenSource (
        if fromSource then " (built from source)" else " (patched binaries from jetbrains)"
      );
    maintainers = map (x: lib.maintainers."${x}") meta.maintainers;
    teams = [ lib.teams.jetbrains ];
    license = if meta.isOpenSource then lib.licenses.asl20 else lib.licenses.unfree;
    sourceProvenance =
      if fromSource then
        [ lib.sourceTypes.fromSource ]
      else
        (
          if stdenv.hostPlatform.isDarwin then
            [ lib.sourceTypes.binaryNativeCode ]
          else
            [ lib.sourceTypes.binaryBytecode ]
        );
  };

  mkJetBrainsProduct =
    {
      pname,
      fromSource ? false,
      extraWrapperArgs ? [ ],
      extraLdPath ? [ ],
      extraBuildInputs ? [ ],
      extraTests ? { },
    }:
    mkJetBrainsProductCore {
      inherit
        pname
        extraLdPath
        jdk
        ;
      extraBuildInputs =
        extraBuildInputs
        ++ [ stdenv.cc.cc ]
        ++ lib.optionals stdenv.hostPlatform.isLinux [
          fontconfig
          libGL
          libX11
        ];
      extraWrapperArgs =
        extraWrapperArgs
        ++ lib.optionals (stdenv.hostPlatform.isLinux && forceWayland) [
          ''--add-flags "\''${WAYLAND_DISPLAY:+-Dawt.toolkit.name=WLToolkit}"''
        ];
      src =
        if fromSource then
          communitySources."${pname}"
        else
          fetchurl {
            url = products."${pname}".url;
            sha256 = products."${pname}".sha256;
          };
      version = if fromSource then communitySources."${pname}".version else products."${pname}".version;
      buildNumber =
        if fromSource then communitySources."${pname}".buildNumber else products."${pname}".build_number;
      inherit (ideInfo."${pname}") wmClass product;
      productShort = ideInfo."${pname}".productShort or ideInfo."${pname}".product;
      meta = mkMeta ideInfo."${pname}".meta fromSource;
      passthru.tests = extraTests // {
        plugins = callPackage ./plugins/tests.nix { ideName = pname; };
      };
      libdbm =
        if ideInfo."${pname}".meta.isOpenSource then
          communitySources."${pname}".libdbm
        else
          communitySources.idea-community.libdbm;
      fsnotifier =
        if ideInfo."${pname}".meta.isOpenSource then
          communitySources."${pname}".fsnotifier
        else
          communitySources.idea-community.fsnotifier;
    };

  communitySources = callPackage ./source { };

  buildIdea =
    args:
    mkJetBrainsProduct (
      args
      // {
        extraLdPath = [ zlib ];
        extraWrapperArgs = [
          ''--set M2_HOME "${maven}/maven"''
          ''--set M2 "${maven}/maven/bin"''
        ];
      }
    );

  buildPycharm =
    args:
    (mkJetBrainsProduct args).overrideAttrs (
      finalAttrs: previousAttrs:
      lib.optionalAttrs stdenv.hostPlatform.isLinux {
        buildInputs =
          with python3.pkgs;
          (previousAttrs.buildInputs or [ ])
          ++ [
            python3
            setuptools
          ];
        preInstall = ''
          echo "compiling cython debug speedups"
          if [[ -d plugins/python-ce ]]; then
              ${python3.interpreter} plugins/python-ce/helpers/pydev/setup_cython.py build_ext --inplace
          else
              ${python3.interpreter} plugins/python/helpers/pydev/setup_cython.py build_ext --inplace
          fi
        '';
        # See https://www.jetbrains.com/help/pycharm/2022.1/cython-speedups.html
=======
  # The binary builds use the same libdbm and fsnotifier as the current idea-oss source build.
  mkBinIde =
    path: extras:
    callPackage path (
      {
        inherit mkJetBrainsProduct;
        libdbm = _idea-oss.libdbm;
        fsnotifier = _idea-oss.fsnotifier;
>>>>>>> master
      }
      // extras
    );

  # Common build overrides, fixes, etc.
  # TODO: These should eventually be moved outside of this file
  pyCharmCommonOverrides = (
    finalAttrs: previousAttrs:
    lib.optionalAttrs stdenv.hostPlatform.isLinux {
      buildInputs =
        with python3.pkgs;
        (previousAttrs.buildInputs or [ ])
        ++ [
          python3
          setuptools
        ];
      preInstall = ''
        echo "compiling cython debug speedups"
        if [[ -d plugins/python-ce ]]; then
            ${python3.interpreter} plugins/python-ce/helpers/pydev/setup_cython.py build_ext --inplace
        else
            ${python3.interpreter} plugins/python/helpers/pydev/setup_cython.py build_ext --inplace
        fi
      '';
      # See https://www.jetbrains.com/help/pycharm/2022.1/cython-speedups.html
    }
  );
  patchSharedLibs = lib.optionalString stdenv.hostPlatform.isLinux ''
    ls -d \
      $out/*/bin/*/linux/*/lib/liblldb.so \
      $out/*/bin/*/linux/*/lib/python3.8/lib-dynload/* \
      $out/*/plugins/*/bin/*/linux/*/lib/liblldb.so \
      $out/*/plugins/*/bin/*/linux/*/lib/python3.8/lib-dynload/* |
    xargs patchelf \
      --replace-needed libssl.so.10 libssl.so \
      --replace-needed libssl.so.1.1 libssl.so \
      --replace-needed libcrypto.so.10 libcrypto.so \
      --replace-needed libcrypto.so.1.1 libcrypto.so \
      --replace-needed libcrypt.so.1 libcrypt.so \
      ${lib.optionalString stdenv.hostPlatform.isAarch "--replace-needed libxml2.so.2 libxml2.so"}
  '';
<<<<<<< HEAD
||||||| 213fed0310e3
in
rec {
  # Sorted alphabetically
=======
in
{
  # Sorted alphabetically. Deprecated products and aliases are at the very end.
  clion = mkBinIde ./ides/clion.nix { inherit patchSharedLibs; };
  datagrip = mkBinIde ./ides/datagrip.nix { };
  dataspell = mkBinIde ./ides/dataspell.nix { };
  gateway = mkBinIde ./ides/gateway.nix { };
  goland = mkBinIde ./ides/goland.nix { };
  idea = mkBinIde ./ides/idea.nix { };
  idea-oss = _idea-oss;
  mps = mkBinIde ./ides/mps.nix { };
  phpstorm = mkBinIde ./ides/phpstorm.nix { };
  pycharm = mkBinIde ./ides/pycharm.nix { inherit pyCharmCommonOverrides; };
  pycharm-oss = mkSrcIde ./ides/pycharm-oss.nix { inherit pyCharmCommonOverrides; };
  rider = mkBinIde ./ides/rider.nix { inherit patchSharedLibs; };
  ruby-mine = mkBinIde ./ides/ruby-mine.nix { };
  rust-rover = mkBinIde ./ides/rust-rover.nix { inherit patchSharedLibs; };
  webstorm = mkBinIde ./ides/webstorm.nix { };
>>>>>>> master

<<<<<<< HEAD
  # TODO: These can be moved down again when we don't need the aliases anymore:
  _idea = buildIdea {
    pname = "idea";
    extraBuildInputs = [
      lldb
      musl
    ];
  };
  _idea-oss = buildIdea {
    pname = "idea-oss";
    fromSource = true;
  };
  _pycharm = buildPycharm {
    pname = "pycharm";
    extraBuildInputs = [ musl ];
  };
  _pycharm-oss = buildPycharm {
    pname = "pycharm-oss";
    fromSource = true;
  };
in
{
  # Sorted alphabetically. Deprecated products and aliases are at the very end.
||||||| 213fed0310e3
  aqua = mkJetBrainsProduct {
    pname = "aqua";
    extraBuildInputs = [
      lldb
    ];
  };
=======
  # Plugins
  plugins = callPackage ./plugins { };
}
>>>>>>> master

// lib.optionalAttrs config.allowAliases rec {

  # Deprecated products and aliases.

<<<<<<< HEAD
  datagrip = mkJetBrainsProduct {
    pname = "datagrip";
  };

  dataspell =
    let
      libr = runCommand "libR" { } ''
        mkdir -p $out/lib
        ln -s ${R}/lib/R/lib/libR.so $out/lib/libR.so
      '';
    in
    mkJetBrainsProduct {
      pname = "dataspell";
      extraBuildInputs = [
        libgcc
        libr
      ];
    };

  gateway = mkJetBrainsProduct {
    pname = "gateway";
    extraBuildInputs = [ libgcc ];
  };

  goland =
    (mkJetBrainsProduct {
      pname = "goland";
      extraWrapperArgs = [
        # fortify source breaks build since delve compiles with -O0
        ''--prefix CGO_CPPFLAGS " " "-U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=0"''
      ];
      extraBuildInputs = [
        libgcc
      ];
    }).overrideAttrs
      (attrs: {
        postFixup =
          (attrs.postFixup or "")
          + lib.optionalString stdenv.hostPlatform.isLinux ''
            interp="$(cat $NIX_CC/nix-support/dynamic-linker)"
            patchelf --set-interpreter $interp $out/goland/plugins/go-plugin/lib/dlv/linux/dlv
            chmod +x $out/goland/plugins/go-plugin/lib/dlv/linux/dlv
          '';
      });

  idea = _idea;

  idea-oss = _idea-oss;
||||||| 213fed0310e3
  datagrip = mkJetBrainsProduct {
    pname = "datagrip";
  };

  dataspell =
    let
      libr = runCommand "libR" { } ''
        mkdir -p $out/lib
        ln -s ${R}/lib/R/lib/libR.so $out/lib/libR.so
      '';
    in
    mkJetBrainsProduct {
      pname = "dataspell";
      extraBuildInputs = [
        libgcc
        libr
      ];
    };

  gateway = mkJetBrainsProduct {
    pname = "gateway";
    extraBuildInputs = [ libgcc ];
  };

  goland =
    (mkJetBrainsProduct {
      pname = "goland";
      extraWrapperArgs = [
        # fortify source breaks build since delve compiles with -O0
        ''--prefix CGO_CPPFLAGS " " "-U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=0"''
      ];
      extraBuildInputs = [
        libgcc
      ];
    }).overrideAttrs
      (attrs: {
        postFixup =
          (attrs.postFixup or "")
          + lib.optionalString stdenv.hostPlatform.isLinux ''
            interp="$(cat $NIX_CC/nix-support/dynamic-linker)"
            patchelf --set-interpreter $interp $out/goland/plugins/go-plugin/lib/dlv/linux/dlv
            chmod +x $out/goland/plugins/go-plugin/lib/dlv/linux/dlv
          '';
      });

  idea-community-bin = buildIdea {
    pname = "idea-community";
  };

  idea-community-src = buildIdea {
    pname = "idea-community";
    fromSource = true;
  };

  idea-community =
    if stdenv.hostPlatform.isDarwin || stdenv.hostPlatform.isAarch64 then
      idea-community-bin
    else
      idea-community-src;

  idea-ultimate = buildIdea {
    pname = "idea-ultimate";
    extraBuildInputs = [
      lldb
      musl
    ];
  };
=======
  aqua =
    lib.warnOnInstantiate
      "jetbrains.aqua: Aqua has been discontinued by Jetbrains and is not receiving updates. It will be removed in NixOS 26.05."
      (mkBinIde ./ides/aqua.nix { });

  idea-community =
    lib.warnOnInstantiate
      "jetbrains.idea-community: IntelliJ IDEA Community has been discontinued by Jetbrains. This deprecated alias uses the, no longer updated, binary build on Darwin & Linux aarch64. On other platforms it uses IDEA Open Source, built from source. Either switch to 'jetbrains.idea-oss' or 'jetbrains.idea'. See: https://blog.jetbrains.com/idea/2025/07/intellij-idea-unified-distribution-plan/"
      (
        if stdenv.hostPlatform.isDarwin || stdenv.hostPlatform.isAarch64 then
          idea-community-bin
        else
          _idea-oss
      );

  idea-community-bin =
    lib.warnOnInstantiate
      "jetbrains.idea-community-bin: IntelliJ IDEA Community has been discontinued by Jetbrains. This binary build is no longer updated. Switch to 'jetbrains.idea-oss' for open source builds (from source) or 'jetbrains.idea' for commercial builds (binary, unfree). See: https://blog.jetbrains.com/idea/2025/07/intellij-idea-unified-distribution-plan/"
      (mkBinIde ./ides/idea-community.nix { });
>>>>>>> master

  idea-ultimate =
    lib.warnOnInstantiate "'jetbrains.idea-ultimate' has been renamed to/replaced by 'jetbrains.idea'"
      (mkBinIde ./ides/idea.nix { });

<<<<<<< HEAD
  phpstorm = mkJetBrainsProduct {
    pname = "phpstorm";
    extraBuildInputs = [
      musl
    ];
  };

  pycharm = _pycharm;

  pycharm-oss = _pycharm-oss;
||||||| 213fed0310e3
  phpstorm = mkJetBrainsProduct {
    pname = "phpstorm";
    extraBuildInputs = [
      musl
    ];
  };

  pycharm-community-bin = buildPycharm { pname = "pycharm-community"; };

  pycharm-community-src = buildPycharm {
    pname = "pycharm-community";
    fromSource = true;
  };

  pycharm-community =
    if stdenv.hostPlatform.isDarwin then pycharm-community-bin else pycharm-community-src;

  pycharm-professional = buildPycharm {
    pname = "pycharm-professional";
    extraBuildInputs = [ musl ];
  };
=======
  idea-community-src = lib.warnOnInstantiate "jetbrains.idea-community-src: IntelliJ IDEA Community has been discontinued by Jetbrains. This is now an alias for 'jetbrains.idea-oss', the Open Source build of IntelliJ. See: https://blog.jetbrains.com/idea/2025/07/intellij-idea-unified-distribution-plan/" _idea-oss;

  pycharm-community =
    lib.warnOnInstantiate
      "pycharm-community: PyCharm Community has been discontinued by Jetbrains. This deprecated alias uses the, no longer updated, binary build on Darwin. On Linux it uses PyCharm Open Source, built from source. Either switch to 'jetbrains.pycharm-oss' or 'jetbrains.pycharm'. See: https://blog.jetbrains.com/pycharm/2025/04/pycharm-2025"
      (
        if stdenv.hostPlatform.isDarwin then
          pycharm-community-bin
        else
          (mkSrcIde ./ides/pycharm-oss.nix { inherit pyCharmCommonOverrides; })
      );

  pycharm-community-bin =
    lib.warnOnInstantiate
      "pycharm-community-bin: PyCharm Community has been discontinued by Jetbrains. This binary build is no longer updated. Switch to 'jetbrains.pycharm-oss' for open source builds (from source) or 'jetbrains.pycharm' for commercial builds (binary, unfree). See: https://blog.jetbrains.com/pycharm/2025/04/pycharm-2025"
      (mkBinIde ./ides/pycharm-community.nix { inherit pyCharmCommonOverrides; });
>>>>>>> master

  pycharm-community-src =
    lib.warnOnInstantiate
      "jetbrains.idea-community-src: PyCharm Community has been discontinued by Jetbrains. This is now an alias for 'jetbrains.pycharm-oss', the Open Source build of PyCharm. See: https://blog.jetbrains.com/pycharm/2025/04/pycharm-2025"
      (mkSrcIde ./ides/pycharm-oss.nix { inherit pyCharmCommonOverrides; });

<<<<<<< HEAD
            for dir in $out/rider/lib/ReSharperHost/linux-*; do
              rm -rf $dir/dotnet
              ln -s ${dotnet-sdk}/share/dotnet $dir/dotnet
            done
          '';
      });

  ruby-mine = mkJetBrainsProduct {
    pname = "ruby-mine";
    extraBuildInputs = [
      musl
    ];
  };

  rust-rover =
    (mkJetBrainsProduct {
      pname = "rust-rover";
      extraBuildInputs =
        lib.optionals stdenv.hostPlatform.isLinux [
          python3
          openssl
          libxcrypt-legacy
        ]
        ++ lib.optionals (stdenv.hostPlatform.isLinux && stdenv.hostPlatform.isAarch) [
          expat
          libxml2
          xz
        ];
    }).overrideAttrs
      (attrs: {
        postFixup = ''
          ${attrs.postFixup or ""}
          ${patchSharedLibs}
        '';
      });

  webstorm = mkJetBrainsProduct {
    pname = "webstorm";
    extraBuildInputs = [
      musl
    ];
  };

  # Plugins

  plugins = callPackage ./plugins { };
||||||| 213fed0310e3
            for dir in $out/rider/lib/ReSharperHost/linux-*; do
              rm -rf $dir/dotnet
              ln -s ${dotnet-sdk}/share/dotnet $dir/dotnet
            done
          '';
      });

  ruby-mine = mkJetBrainsProduct {
    pname = "ruby-mine";
    extraBuildInputs = [
      musl
    ];
  };

  rust-rover =
    (mkJetBrainsProduct {
      pname = "rust-rover";
      extraBuildInputs =
        lib.optionals stdenv.hostPlatform.isLinux [
          python3
          openssl
          libxcrypt-legacy
        ]
        ++ lib.optionals (stdenv.hostPlatform.isLinux && stdenv.hostPlatform.isAarch) [
          expat
          libxml2
          xz
        ];
    }).overrideAttrs
      (attrs: {
        postFixup = ''
          ${attrs.postFixup or ""}
          ${patchSharedLibs}
        '';
      });

  webstorm = mkJetBrainsProduct {
    pname = "webstorm";
    extraBuildInputs = [
      musl
    ];
  };

  writerside = mkJetBrainsProduct {
    pname = "writerside";
    extraBuildInputs = [
      musl
    ];
  };

  plugins = callPackage ./plugins { };
=======
  pycharm-professional =
    lib.warnOnInstantiate
      "'jetbrains.pycharm-professional' has been renamed to/replaced by 'jetbrains.pycharm'"
      (mkBinIde ./ides/pycharm.nix { inherit pyCharmCommonOverrides; });
>>>>>>> master

  writerside =
    lib.warnOnInstantiate
      "jetbrains.writerside: Writerside has been discontinued by Jetbrains and is not receiving updates. It will be removed in NixOS 26.05."
      (mkBinIde ./ides/writerside.nix { });
}

// lib.optionalAttrs config.allowAliases rec {

  # Deprecated products and aliases.

  aqua =
    lib.warnOnInstantiate
      "jetbrains.aqua: Aqua has been discontinued by Jetbrains and is not receiving updates. It will be removed in NixOS 26.05."
      (mkJetBrainsProduct {
        pname = "aqua";
        extraBuildInputs = [
          lldb
        ];
      });

  idea-community =
    lib.warnOnInstantiate
      "jetbrains.idea-community: IntelliJ IDEA Community has been discontinued by Jetbrains. This deprecated alias uses the, no longer updated, binary build on Darwin & Linux aarch64. On other platforms it uses IDEA Open Source, built from source. Either switch to 'jetbrains.idea-oss' or 'jetbrains.idea'. See: https://blog.jetbrains.com/idea/2025/07/intellij-idea-unified-distribution-plan/"
      (
        if stdenv.hostPlatform.isDarwin || stdenv.hostPlatform.isAarch64 then
          idea-community-bin
        else
          _idea-oss
      );

  idea-community-bin =
    lib.warnOnInstantiate
      "jetbrains.idea-community-bin: IntelliJ IDEA Community has been discontinued by Jetbrains. This binary build is no longer updated. Switch to 'jetbrains.idea-oss' for open source builds (from source) or 'jetbrains.idea' for commercial builds (binary, unfree). See: https://blog.jetbrains.com/idea/2025/07/intellij-idea-unified-distribution-plan/"
      (buildIdea {
        pname = "idea-community";
      });

  idea-ultimate = lib.warnOnInstantiate "'jetbrains.idea-ultimate' has been renamed to/replaced by 'jetbrains.idea'" _idea;

  idea-community-src = lib.warnOnInstantiate "jetbrains.idea-community-src: IntelliJ IDEA Community has been discontinued by Jetbrains. This is now an alias for 'jetbrains.idea-oss', the Open Source build of IntelliJ. See: https://blog.jetbrains.com/idea/2025/07/intellij-idea-unified-distribution-plan/" _idea-oss;

  pycharm-community =
    lib.warnOnInstantiate
      "pycharm-comminity: PyCharm Community has been discontinued by Jetbrains. This deprecated alias uses the, no longer updated, binary build on Darwin. On Linux it uses PyCharm Open Source, built from source. Either switch to 'jetbrains.pycharm-oss' or 'jetbrains.pycharm'. See: https://blog.jetbrains.com/pycharm/2025/04/pycharm-2025"
      (if stdenv.hostPlatform.isDarwin then pycharm-community-bin else _pycharm-oss);

  pycharm-community-bin =
    lib.warnOnInstantiate
      "pycharm-comminity-bin: PyCharm Community has been discontinued by Jetbrains. This binary build is no longer updated. Switch to 'jetbrains.pycharm-oss' for open source builds (from source) or 'jetbrains.pycharm' for commercial builds (binary, unfree). See: https://blog.jetbrains.com/pycharm/2025/04/pycharm-2025"
      (buildPycharm {
        pname = "pycharm-community";
      });

  pycharm-community-src = lib.warnOnInstantiate "jetbrains.idea-community-src: PyCharm Community has been discontinued by Jetbrains. This is now an alias for 'jetbrains.pycharm-oss', the Open Source build of PyCharm. See: https://blog.jetbrains.com/pycharm/2025/04/pycharm-2025" _pycharm-oss;

  pycharm-professional = lib.warnOnInstantiate "'jetbrains.pycharm-professional' has been renamed to/replaced by 'jetbrains.pycharm'" _pycharm;

  writerside =
    lib.warnOnInstantiate
      "jetbrains.writerside: Writerside has been discontinued by Jetbrains and is not receiving updates. It will be removed in NixOS 26.05."
      (mkJetBrainsProduct {
        pname = "writerside";
        extraBuildInputs = [
          musl
        ];
      });
}
