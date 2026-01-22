{
  buildAspNetCore,
  buildNetRuntime,
  buildNetSdk,
  fetchNupkg,
}:

# v10.0 (active)

let
  commonPackages = [
    (fetchNupkg {
      pname = "Microsoft.AspNetCore.App.Ref";
<<<<<<< HEAD
      version = "10.0.1";
      hash = "sha512-dh+mzIMt9nUXWglf7N5h26eZg5MvQZGMoqY2i8mLsWrXiycCqF9AODB8uto+Yh+eH+wPX/B//0l44TLugJka/A==";
||||||| 213fed0310e3
      version = "10.0.0";
      hash = "sha512-HcTzMfT74z2wx5virCUA8AgviXAfP9LO3ToUmCIg9AMGK4ohrUwhfQWHK4EE2egpEk1jKvDe1ZPPlX9csgCMlw==";
=======
      version = "10.0.2";
      hash = "sha512-MeDkxsB9ir694B2z0nIG7ZZ6DISLmbU7aOwCusO6AadYjitxjv+e9TuY1Y0ijwuYNjxukBIj45nF/fCEg6CGHw==";
    })
    (fetchNupkg {
      pname = "Microsoft.AspNetCore.App.Internal.Assets";
      version = "10.0.2";
      hash = "sha512-v9Au9ZSo3ZOe77StttCPCtOZkY7xSFXSyyWMR9Y0Kx3ZKegVp4zg7TJwz4osTgQp7EKyXlbDpvjUbgly51XbmA==";
>>>>>>> master
    })
    (fetchNupkg {
      pname = "Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
      version = "10.0.1";
      hash = "sha512-flYAaRRqwcTWGzKAeATlOpDFf46EgWuWil2z/ik/lbC572R9Bb+pNL8CMstitLw07PxLEtckeIVUxrZaS0FGwg==";
||||||| 213fed0310e3
      version = "10.0.0";
      hash = "sha512-CDUeukQ6yClE0KQvgsUJyegl7w2ORz3c3L9kBlqhOiNwhg8liiwA12HDGqYwrQQPY/oFSzLp4XpjwDZ4mVAWMg==";
=======
      version = "10.0.2";
      hash = "sha512-dlgigLX+tCuYRg5TcnOTg+UyNlIK0queBF5EWmPw8jpX3J0iqXUs9Nb+4BriG57QoNRiZCXaEB81TDeKb56xxw==";
>>>>>>> master
    })
    (fetchNupkg {
      pname = "Microsoft.NETCore.App.Ref";
<<<<<<< HEAD
      version = "10.0.1";
      hash = "sha512-Hbru54m1Av0D8lGHGJ1gnU8TFYIewPbPo7cIBmj+XpUzj0TXid2zmYP19ehFjIX3gmy3mnZXWRT/M389OUDmRA==";
||||||| 213fed0310e3
      version = "10.0.0";
      hash = "sha512-DM2V40+lgsHLg7cUd7TWxRhdSwb5HgpHzImq4npVg3hAyh6xwKAZ9j/y+3nWG0qSLHc3t5FVLeR4bJO0PN3tsA==";
=======
      version = "10.0.2";
      hash = "sha512-3qJ+azj6rd+xEpGVoCtpDr1p83IVLIJEZkXo8EtPWB8HjZlrfh7MA6FcJM8bEhqijqSy10yzeoJY0uyB0Dgeug==";
>>>>>>> master
    })
    (fetchNupkg {
      pname = "Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
      version = "10.0.1";
      hash = "sha512-PLdYmCls6trm8nFOUTVxQgG0KxssYA5HL+6WkNDSRfhBlXOhB349+FJjs/+uWtJq9bvrM93dbDj1abYmxw3USg==";
||||||| 213fed0310e3
      version = "10.0.0";
      hash = "sha512-XXkdkHkgVPvAmXDeP3HIpDlNTswlsK9fuIkPHVDYcmxRuFnEEc/1yEg+MikjA7+fw6TSy1AqkNdcyrjJjag48w==";
=======
      version = "10.0.2";
      hash = "sha512-Lbk2KbxuXgn2iW+VjbXYUD33w5EDgNXwLrBQ6KeHDMria/x9SYqf080/wvto4Ot2La2gMgvbwS7WJ9IE08ydNA==";
>>>>>>> master
    })
    (fetchNupkg {
      pname = "Microsoft.NET.ILLink.Tasks";
<<<<<<< HEAD
      version = "10.0.1";
      hash = "sha512-zvIEPvPiT21zN3ShmtYVOFogOPw7rsT9zBDenoThGsTbuu77Vh/X0RR+yFdl27Ec7iAxxgrtB0Kqsof0P+XtmQ==";
||||||| 213fed0310e3
      version = "10.0.0";
      hash = "sha512-nmdgBAyTi4gyuP18U9I7JhVSC31+mZyyQQzmldKxkaVQCB5mcPjgvnfkJCQjN84VRFE++hXW0xBqPSbUuny0QQ==";
=======
      version = "10.0.2";
      hash = "sha512-Q1ZYQ+2IEDcc6Oh2C7VehfmMUUbwWle4SmVVfb5o7MjPPfj7ns2s5OYuPpcAupkCluuIEo4qHgwZMDCAIKVxkw==";
>>>>>>> master
    })
  ];

  hostPackages = {
    linux-arm = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.linux-arm";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-QN3AEmYYq2xJJ9q0bpqHpcAHH19hwpOe6bdmiGBG9OR3FL8Hax6JiVi6qlRIB+9p20mnT1MiuKC7GxCPXWHabg==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-jlcG3SsEkcWQn7xUWuEU3uscK6rLQSCPNWO43k+enQHf/7mmsvAAu3DRHl2STsZclB/KrhQm0qgK/FiEhD9j3g==";
=======
        version = "10.0.2";
        hash = "sha512-fpiV9uvvIvfIPK5AirdUyteKq4+zSpA0uEXQu02HKumxOti1xxDhvUV5m5iEzDwuPr1AbUW/iHt40F01QUebPw==";
>>>>>>> master
      })
    ];
    linux-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.linux-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-cIXpTdQxnIpp2o2EHRQ4hFLdMrBSe7k3/9Ce+0iz7WiIh4kr28xhGbO7fV3VH4T48HZyobNfNeBYfVz2tvNk3A==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-UkVobkMgbeFCpcgTV0TvMUTzWlI5G4Ha1OlS26HKDzdY+AEhJ7UcymZ7SR16W3mw6mRunKiQtXuwtN+fZ/jE1w==";
=======
        version = "10.0.2";
        hash = "sha512-D519AZE0AC3AiCtXJOwFUil10/0dm/uhykgje8fm+tWZEftGeOwqeyvG/FqT2T+UJItJ2X2agymdGXmsF9sw9A==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-arm64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-n8mpr3R3KhwERUidCsyfpSofXKW+NGnDAgLGQwUp3Duc/SyhNn2YEr3ezBYoTxfXi4tUYMSxwlaqpMwEdrFVvg==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-fKoXVn60Ct8JOazjDuwpzGZSGqVHBXboJeyCWJQj6w2B2x0p3mOJkR0/kOifxT+E2NMX2Zx12VELKK9hAAOt2w==";
=======
        version = "10.0.2";
        hash = "sha512-jvPzoK4Lw6lZWdsTDIAa2dImRmHvN9mbkuvrvUriz7qTQPhaWsqC9p50VMrO5LYZCxCcLEw+crXSQb/paAQgrg==";
>>>>>>> master
      })
    ];
    linux-x64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.linux-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-l61Khjl1xrKq1wVJVoUFb72oJON7ugf1OZK6r+XgMBxiAl1Yhm23IleWFn0Cj28ggaA1bgQ7+PdeIlj9JC9izA==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-+jM9DkV8UdrLkm6PyfbUpRJLOC1pVfDHlKD9gXU/1fDkFpy7q8RSnQ5GCbxL5o5U7q6lfh4rQ5FsCD0fJC+zYw==";
=======
        version = "10.0.2";
        hash = "sha512-51ko4yV4GrGuS/U+8eYxWWc/ib3KN+ZOdJmH4roHgWw/MRIAfezlGkQAwMmt7Fnd3OjCT2aVBuIcYKbtnplIhA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-x64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-XKqUj0ZvBKGx+yY1Z+lObTbEvfWCtzhUjlcTYy/yJF0DOtrFJKk8PEyIu+Zy8RazidVAeP0O+191ha34Jzr6pg==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-RfDDFGwkXvXes6pzq+Fl8RNweoSOwrQsjL++Zp1+DLY9uwAoKeDYjTai2Rin29MjmD5t854ZivDKP3X5HXYRRg==";
=======
        version = "10.0.2";
        hash = "sha512-DAZWcPotgFzYAbYIS4zPq8Be/tWLtif7wC9LIXukGChz2F+fHpWv4r9OaOPTf8hCmQQAb4xeuMtOP6O5msoVDg==";
>>>>>>> master
      })
    ];
    linux-musl-arm = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.linux-musl-arm";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-8L+yX/6aGFgFT7IYbCK7G8wESyG1qp9gWM9i4bsLKAOYjkNdhAkelqLIK0QdMBvAJBPw6ieWISWFxy/iDe/hBA==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-ZBdYFk/Myia1U4r2tFfidqRUCfMrW9mC+D9xHoDCDELpmysFcIdNfPIAdXa3jXwv+EfNbh1D2+l/pSASHSx0Jw==";
=======
        version = "10.0.2";
        hash = "sha512-msYQCjOIO9huZemPRdDi2dabKKr0wSKlCtzFdPZwSDWYfiOasgFrgsHXa4BC1zgw30ZEWaEFIwrHU6QFjLQqEQ==";
>>>>>>> master
      })
    ];
    linux-musl-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.linux-musl-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-OvXliQbK/L/Y7Hej0UsbkcjDdvGWTuLhQXh4NXyZFiuYB0qxjNYBDQ83RqCAGZemRv3KD3esqQECV80TEyDUuQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-THBCdaGd2SWs4ECp5ZGPi1vB1SiIiTEsCYSAegJayw2Ic9Ky0RdaWSA+Q0yfI2sfnSsd97Vk2dhHuzvFBgPFbQ==";
=======
        version = "10.0.2";
        hash = "sha512-jH1v8wgrHaT0FnHgEPpVCM60TPHvZC0nL/o5cMLIMBJ7DI0XZM2vkei8JqyADR6ivTzXBpfj2Dquou2eA0AOzA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-musl-arm64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-lKecrY73YGL6GCI71n8pOvM08kTA94p2u69gHn6AAjfQuWxReMhDvytqcARNtvqef98pFmaomyCW05COgyLzSQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-YjvVt1y61529YYJzPuFbeFxBgekq8sDg01yudN6zKcDmacQhUtfx16xijd/9bcixH4HWCjB7tjEHLuDptm5m+Q==";
=======
        version = "10.0.2";
        hash = "sha512-W1DaAuDLiaVjBTlJzKcWeavvCa/Umlo3fqgrOAR/UqgF6OSwBX6Z2FkTiZ+hpeeMQ1nKUwx1pcDepx1CauBrag==";
>>>>>>> master
      })
    ];
    linux-musl-x64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.linux-musl-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-4JTjPEY+rHMEXBBd7ViWbq6wpqi+m29lWVvcUi0BYtTwdQfigkGfF8pjDaYlyEvuHxrGXv542uQqfLSfHnWGRQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-fE0I9SJDBxOX+OTzbA1rg4omn21xp08dzm7+zHX/U1wZxy1TO/bRhcLlEMs5f+nNXN6/8f0b4eqsglqtZz45uQ==";
=======
        version = "10.0.2";
        hash = "sha512-0oMz97/sUtkQcANOcZ3SicPwA3qR+yjIl7EF/lokGCGwa9MN/2IRaTxgCVmT2or7ijb4bTMns8i+S33V3ngD2g==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-musl-x64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-RR0c+xowMKF/qxHvKcqwZ5VcTmImKXGRwJgSVpsiWN4tH8Di64KlN6lZSlj1uO6SocaOlyB13Kuee9thDiVf2Q==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-Gubgq6b9GOrD/q+eXHW14RrxcYeWsQ2bl9jL8HZaR6kXYVWd1CAF1TjKbqFLLuG01pqvDIdu8R6pMxGgsWWKFA==";
=======
        version = "10.0.2";
        hash = "sha512-u+Nacy3It5swHvm1HtdhNEoYZpI9VTvwEkZ0aH08MCKG+5I+M4eL9axO6ZS6NeQQ8ZqYvuCagNytar+QR2bihQ==";
>>>>>>> master
      })
    ];
    osx-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.osx-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-p/Ln/LSzYwVi2XkhhPDi9kmXjtkcumL0Mo82PJRyfG15l9HkjvQlG0AXFW5yrjqo4tyNjdkPSAXCRpF1I/INjw==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-lno9hyxtY9nPVBi/VUZeLS7ARDEMBJDI2gTp6VlnbPIJuYTyUYOD/tyo6bwHG62Ie0Tifm5gzR856jgiMvV6Pg==";
=======
        version = "10.0.2";
        hash = "sha512-yYMtp3DzEgOKnYaXZ4xDlaqJEIIKbyrKgZdwvbTivKdtP9v+oRja5CE9EaLjnrHpb4DXJx3RhrU4CxteCtStAw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.osx-arm64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-CR7uuB7JDBTPMHS1YtUZBbZhlbCDgNiuXPhjVKTIO+rnt1fxKgwBoombdTnG+sh4Yv9ziB/suB+P1DdrW4yWiQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-C2VAFhG7JYz5QEkZGkiPgoJTiERvR/bwVWfEdTyijHcUqeryjm0u89qx5Iz5AOR6U5wQNej+2Pp5BdlEd/MKPw==";
=======
        version = "10.0.2";
        hash = "sha512-qPGQVJUzn/x4r4CEnAR2gQWpxoxrC0i/PB/3ra/p56L8T2gPQDndpCT5lYG95c+IBk5qBZCzYVCp89iSj4L95A==";
>>>>>>> master
      })
    ];
    osx-x64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.osx-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-NDvPitCnrp5x+75klaO9EsbbRHL+MBRy5KuJFiMpd3TtkcbaYxvTrvPp6XxVgSiszXup2zq/Z0d/K4paZ7fksQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-A8Zm2HoUc2fV03HqemG6BProBJYIa87mzjbBvKIDXMshispBmeVfbsEQGoJEst8KKi2vLttDX42qJdEB419eTQ==";
=======
        version = "10.0.2";
        hash = "sha512-nl8eKSnKKy+58OA1L5JdjEUUZmfYAetCHa2ub8tr3COZSVsGVon6sPpAZ5DQUSajIPSt7NRekyEr7m3XDX5Rkg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.osx-x64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-OdaZNmRxZcd8HC48oM2+c2NOB6HEMsaBbgXbXBFPuL3iNgef1CNjVbW810imCNf++HY1TFrcONztTeKc25E17Q==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-gbyYz6R9QJJZ5j6XtkG5asyKRcW6IvnXLwklvAvk4bkU0+kP7USIn+EtXyDqFKuiohPRzD+sHi04LmDqc+FRiA==";
=======
        version = "10.0.2";
        hash = "sha512-N3CTQx6CxHEwMkoYAhDY3w1XjzSPvqwSy42RkgyFx3FT8cU247A8zcGXJCsXI7yMy0BiOtdzj4I6s+chpo6aJA==";
>>>>>>> master
      })
    ];
    win-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.win-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-4QK9FDp+eB+kt7G1Ffes/N3NxxYGixPDHsj2IMw6PIFONDaqIVn217KI7zgLEiCRI3VDZ4JU/IJTkhY722LKhw==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-/h0qoO2NaKn3nyYXFiXJwUFvcrAJgZVmkK9dam1UFaDHwkPSufBsTx+wsO6YFtCgtfsDM0K2yNlsiIi2LflNIA==";
=======
        version = "10.0.2";
        hash = "sha512-O4x4qz2KLev6o6FYGIckFc+CdCsN0qaDMjlzJlrPbVqWeJHcBTNj5FNTPzDUxCXMPMRX5H5Asd7wpTWc2ZjQJg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.win-arm64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-xift8Jf0S6+aCoYXB73jCr9TEQ4NoCkh5rjsXcNwRnWzTxYEmppAghM0ns06IIATy56gtvp0bHbd4dl9kxcHdg==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-PtkF0VBMXdPyavJUUaCp6OBEhc1SeCz7oaYTn8y+TqczP75cqDXIUk7X6DL20UorQ0VmXBAXLVHv9ey6LP8Mbg==";
=======
        version = "10.0.2";
        hash = "sha512-hqL6zDVP/dnETdj5TzZnee3TFtUibpvwN9FxAWMtwZZo8eCVgIuOjem3s1SPgRuiTRHWsWu8gWNDd3Dm8qn2zg==";
>>>>>>> master
      })
    ];
    win-x64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.win-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-D4ALEODccJT4Ts5Bfe/vi+boDdcnSpuQdIod24IMOahkt8N9DgRG8CTCvkyVtqYXFzStqtgqM2LyFxNMghUCbg==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-uJ/dGjqaFz9YEEe5trIQk7dktkVgs1KWHsd42zdoPX+POC5JIp/aS8JFNECQK9tQQEZfgNeUT0lqfPJyGpP5aA==";
=======
        version = "10.0.2";
        hash = "sha512-ITRkUIkX5aQ1s00vQ1Np5H2P7lA+rk7CIF9Zz6emWa+GTjegLZ4gBAlWQ4hbn4eWI0ba3WVeTTq0t7WPlTTTDg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.win-x64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-Bzw38ZU4NqQoXOHybxZa/yMCspo56j68OSBlmNLs67a9Oesd8RX9TQSX0VkFlThbVSaDaGSWa4d8LA0gr2NajQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-XHtJ+LmFsV0RRD1H8zpRp3+yzOstV/TaRwAg38b+8PvgXn+VEIVVHzlqWu/eB8AMPoVbC7b+OnOTTlBPf3R7+g==";
=======
        version = "10.0.2";
        hash = "sha512-iVH5Au3lt+K3HLICU+SXfwiU8MENdLRCmsn7TTu2JVp/SZSceU/vtYC5akQNgzJkKi412w0oEFOdb6aLvcc3PQ==";
>>>>>>> master
      })
    ];
    win-x86 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.win-x86";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-y5Ic/dtL04mCLoGE+0648ddRUAYpXmGfpI5xRii/7rbRLpitsqE/vPRc8Uz6xUoH68dmr3yIXXkAaC+1kdgYIw==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-GGEi3CB8BqkuKKGxaz+UURu8mBOkdiE9rd4CqQGL/cvHVFCRxNMXeSESLChfhy1S6Sdh3lnwGS+h2WgJpynTgg==";
=======
        version = "10.0.2";
        hash = "sha512-2wmzupkSnGroRzJYepMPELNaXO3fgzz4L/PAkwpvWt5NVFHTDU7lGymPLrBf2lc9U7LCuvuP7qMalx715QvrBA==";
>>>>>>> master
      })
    ];
  };

  targetPackages = {
    linux-arm = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.linux-arm";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-K3SqftZ19wzr/8Y/sl6auNzCJ83sQhn9+hyvRN3JklUnqtm2j214otdCFITgkHNM/Lnc7qA1K8UqzkBySeDq1Q==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-EbPfMeafoSi4K2jmhzbiZx1WhwKdugSfXqAk/6WnsmWIVCJw197V4qTIBkBEJLLpGbQaziP9SsAxk79MOSPwyQ==";
=======
        version = "10.0.2";
        hash = "sha512-/o0jAyZjkAhxUF1iaDiMDlemKcwXLIpKW3yGmLcwdJKOL6X31flCYRHVeCGlL5cFjuAaBc/vDRKyoI2c2MVTKQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.linux-arm";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-3f1VelSNNDqrROz1C13SV//JSS1vvRnnw1hAy6b0XQKosM4ZjL/z59mXh1mYq+RElBnWFsFJBKbHnp+xP+IBKA==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-hH/j5x8f1hqMCqETcCvG6tQ57WCJkXI3sZlEOrw6RZpFeOpMpGIEwM4B0KutZxr5jZchfIcTL+ldJBgd3gOGDw==";
=======
        version = "10.0.2";
        hash = "sha512-4K12mMTIbnRWz3sbQPT2hRrvnsP9EcygayHZcxpVslkzbtb0XGNhAT4qNMHdEeH+BrPqBKaupwgXiQZtZzMClg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.linux-arm";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-/SFcpKmGhKPEdZ/dHoQuS7xSdVYtrGFGbypQxLTlQXi0CsPhfgQDeDwuvaYewfBw0GMsA9vFonluFeOlCzKmcQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-pqX0SUxgLA+StfLlXg7P6y7WkeYkjnaR0aTEu9B3NysInOlOq8LnjQMu2OhMIGSVjzPSU4oMr+YRiZUdtS7tfQ==";
=======
        version = "10.0.2";
        hash = "sha512-JpQdRvo/yReV1WrXN0CzrPoSzcigPTb4N1meEN226hqt7xk2fcvAXJMDntD5eENo/hZ2r7X/rggckjKLzXbLyA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-arm.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-HgFC59dEzjpoilmktWb62fjRcyaxmpJUmsKkSUZHFE8ymCTFKg366jIjZ0Hq0WfDfsbh0UeDV21fe1PYpbrOzA==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-PtWoGQJ5cxT03OEw98ZKhKQZTAko/aERH3C4LfWTajVfAJPpqR0Qv+55DWOnRO/r7qU/dleWzBP82A1FYeheLQ==";
=======
        version = "10.0.2";
        hash = "sha512-QnECS7RZxZKTFEQiufnP3yGKSMKI/9F2Yqa019lCqug9TXO+pbB0coD0nUQ75GpoDj8dMj50SqYM73O0nwrJ7A==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.linux-arm";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-o+3xquQZ9AcjndRpd60ccmA2kzNxMjBarQFwKtxqEm4m9X6reHxBU3Un1wlO5jMNxRHG05oMZGZ9NIcBHswSTQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-wkVQ8tk4CAF8fXfmieaDDSGiCRFuq+C1C1wtTPR8H3ZRZfCPdgj1Yhf/4npckbF51wsyraPPT/OBqTxyhqQZdw==";
=======
        version = "10.0.2";
        hash = "sha512-8plD8Sq9pRfGdJ1xaWJmmk4wvo5LoLps5g0H/D1ahCKf6Bs4BuquxcyVfAHKsZ94/Gs/zACWS1FRKsh4mTCS4g==";
>>>>>>> master
      })
    ];
    linux-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.linux-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-bQMhZGLIQlaHtlxb+1hsTLnggZF/ri8jsC4dAz3lAoon+MAweKz0qr6IpVAxChA6Nuhaop7ulyZTYhm+VzSPBg==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-uBPQl1tUd5cQKN9UdCUnJ0VG/iY8bI8WeTMprmqC+mBA0hgylsZjLUJfBc4I9EPMxNFOBQJwRjQ/uzt1s5FQSA==";
=======
        version = "10.0.2";
        hash = "sha512-Yohi+HtziOv3WP39Rm3Fjb1gttgfjj2Mpk1oFkVuYgxe91Bjyt8veSSmzt4tKLmcTUXr/+TUuA0lx/PftHiPJw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.linux-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-LhjhqX/Jwb3b6q8sBDs5pL7dpThlXEks/MG9+pcuGAlkmPQ+V25eiYk7wjlcxj+xB+A7NidxIX282KOL3Dvi3g==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-JlSAx7QpIcdz3iOT1NCBybZ0+R4MxV2vkRtyfsGBzIzVYqEDjrroo4A7BfxN4H4xplf4w7l/AeQRsaeTR2M2yg==";
=======
        version = "10.0.2";
        hash = "sha512-SmXNApTrb4RHUSfYgS1rNr9jzPHZEnqr1a/5O5ZU6YWx2puq6lUS5H2eTz+EPHaL5XTfVwl39FdtKyIdqs4I/Q==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.linux-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-Wl+YcCJpTNVm67A1Os9tQ56cWMcwTti8L8ZuWUJSSRidYdaiDJUpJNfj7ptYsGNMAKue8vqbNQr3zQdKVcmpmg==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-yo//xWJuO0JpmZO0RaT5QIa6nvqB1MM0MieAtXuDXM4SZd4YJ8Dybz185Yo1NUexobapeIrKNLX002ceh7KBEw==";
=======
        version = "10.0.2";
        hash = "sha512-+FPjH0FOqU75qsQlAyDaGKGEwFmwnVtNE0QtugoKqMwP3rJYWnfAE2DA84VuaeKPUh0ugTRiez1KVxhP9lKM9Q==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-arm64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-do8X7mhD4IdRKiWiVaxkx0O8iN1oiOAYOBa/+MJi0gz4EOdQr67a4hXvp7ZLuJQ8PIxqKfCpKk3aE6KhIY+mDg==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-/JnFo/nqmlFagNW7zCWaXXfq1L6uuoA27KDRrvVsDEduS++fUdimCWPWFeO/vFIzCSnYv+ImyjZVu831zHn1YQ==";
=======
        version = "10.0.2";
        hash = "sha512-LdmCx4BlhGWqVExa6/oumt89+Izs9V4MyepRKlUpja0O/XYIBX7mLaVZ0Leq179YUk3eUs0TvFT9WlrbT2+WrQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.linux-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-UCAtWzIxDjl4PwXtxX54Q1FD4pcJRE64dbD7S5lbhTNt1JFwP59rrSoKUaJvXhZlx96Fq9FykXtyRxAmkvLXOA==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-Q2eKWNI659wTKYT/WntFSeA6DtTQLoFFOtn4EfVEug5oDxnJKwXfylptcw2cXF1UHmbnr3fjn41fmHF+lJ32Rw==";
=======
        version = "10.0.2";
        hash = "sha512-pKVDUKAhaRpGdTqvvN7NyLKuoJvOHMNOdPe7/zMk4mbMnyZc2LYR8ykkkV1LNZQoQW92B6owAgKlzGg3brv/jg==";
>>>>>>> master
      })
    ];
    linux-x64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.linux-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-BLXeMOfMip9vq8+rce0+DgX8+DRmxjrxSeO8JOGiHJ7oD9rYHdX+pSqaakjwe7y7oMIDKm1MC4nJFFpauHlxlQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-X8NccILKj/aEVjz1Gt50zGlRplIHbI+H6uRv2yFY9KioM+sKMgdbNTAsRp9QG4aw5RGA9IhZYxcHCQb8ATc+XQ==";
=======
        version = "10.0.2";
        hash = "sha512-j53o/jrNB3/VLkS0N7QIXbHuLLiS9zc6gmICM2ggyvhlyXaMQBUcvu1vXKKJztd2C81CM0aq9j9CU/ygcXLILg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.linux-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-/hDIh0U69+S/8FEYmYE8OoephfEe2nNxz1AgtWVEJ8JW0dn4oBj8kyBjCjI3bojYE/tJIdGOM+TyAuU6UFDQ4Q==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-cw4mF+MgWPuVHWX4obxmRa7Zkp7ULDS6R3MlB21d6+x5WuDrEbunt/vCPou5LML3RBEFpKYqFhjxL1M9D3QJMA==";
=======
        version = "10.0.2";
        hash = "sha512-7uxI/o0jaZ7lBU0Cpxxl/77ap6+sOfCPPAkOpE+irQ3GxtR8675pZElHrvBA6Eq32Ig0YaDwcpiJ85GPL1f2ow==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.linux-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-JmbpFd85wZikAT/D57wINht5rtfsAQlqQG34NvSu3ajMk9hN1cZ8PmEuysoZVSGap/JGF3cAHP67Z7x9U8DKXA==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-WJMtkEZM2JbiS7VZc/R2+3qUVxiCR+G3JepQwczM0qWBrsRpeVoXGJu/ZpDbUwr7AqzwJm6iD+aCbYpxK8Jlng==";
=======
        version = "10.0.2";
        hash = "sha512-cH59TAPzM+uVBL1OjTFFDMUneXhwjzWojSTgfoU6HVGY4GB78wFIwD9sEBB+abBT0akbP4p+ZfUNp4JKMwVRwA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-x64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-cauY/NbkxOxCmhXoJRq99czH5geyhEV0Nq3LBhZ18tZ+837Ta13YcpCMgyRpCh//aAwFzDtJSPhf7EZQR77cog==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-TBpxxlFyfNVcshnh9euvsLRW7/n1/Sti7CtDIBbOcyhP/STj9OOo/AWv5ZSqe/3KNhlM+G5+ncOP0G0hN39nxw==";
=======
        version = "10.0.2";
        hash = "sha512-EYswiTzkKJK3L22U9nsHLvsdJOelsguYi7gq+slxwj0PZDdkU9zw7F1PeZGxX6MS+rDuDqLZ3ipXEudSD2NQGw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.linux-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-Bxt5GRmRSrp+CKyoVQoafibKtrr/ETe6mbkirLqP8+Twl3bAE/SVYqm53UiPH1HOIQBXCxAGkC8NwsmVAXpweg==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-DJwKMfGknpBwSQ/FiKbN3W4n0XIF/XFtwH6hxoD/2fRjqc6GZbOnoB/qfK5VOpgnIIMpZuCb599ftPtiO8aLog==";
=======
        version = "10.0.2";
        hash = "sha512-kvxx2LqSLIUYPP7uFi/lQ+wY3p+OLHhRW/YwsQjJqrM/Rj/ApMw4l/GmWG+Mwyb329kUCog3pZNd5l8Ki/bxKw==";
>>>>>>> master
      })
    ];
    linux-musl-arm = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.linux-musl-arm";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-jwy2ibfaCHD1j72o/AHzv4bFtqeUXwpgAsph4URVrhFWXUepbRmV/50ehnyA/G+9rEPvvA1cD2ypSr9iZ1e/Kg==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-ZVmFe111GC5/EVm3SO/dbTUyhl511rjO1dpD0QNu1o4og+IRI9VH+5ZsgJFbhJZXiynKYzoVLWdOJt3fiSIrcg==";
=======
        version = "10.0.2";
        hash = "sha512-Xa2h2ZBs+vKW0L9oPM/5NxH6JS+GlN1nvKgOk42sNBAgdrh8nPF7J6fL2ZAclXMQc7EGkPS2vrFYhx2tENvH8g==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.linux-musl-arm";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-VGi4l0A3IQNk07slUkXuPgFIFM8UnuP/zk4Y9PLazuu0vb6q2H8LXE+iHoDapExAQgL8h5wU3nBGOXL3S1t5BQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-2FAwGl8huDfIp072/pQIQ08VqGGY1oGMSb57tbjG18fXLLPIzssWrfZVqOLFaBzgtDm8CbOaQ6HLmuctySxdFw==";
=======
        version = "10.0.2";
        hash = "sha512-NpiSoJv/uYjvVBPn9U1v3LaoaGCN+4+UQbKRZ/rH2ZqUABHnKHEfdUPfaLscOONdYjD6mxGcvNitZqrGn2NkCA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.linux-musl-arm";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-fmpIIKICgHRHHoxyU8YwMVKfIZZYw5ZCH9L+gLCogFLxHemlo0aYvwe2mIgoVJ0b7iDSng3jbZvgvnc7niP6vA==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-lCkhhpyENYogBOXUBJWiO2DHsB/+vPHNDGSqhTttbk+2tET+IuVCafKphJDBrFoSj+3RUPz2oQpMaC4oJM6RdA==";
=======
        version = "10.0.2";
        hash = "sha512-Vs82EOZFQd5YyiwV1KL9BPh8tWzXa5mvXXLVDHRoWqVUXdQBBsQUR7pd2kSYy1Mx2VW9gIqyxlA49NAIy1U8qQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-musl-arm.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-YKF4Pa+VPrIWISpLmcKlIwxUVjDaEbp42a+dnFNY+RopgzFH3CSdS3OUpW0XPveSshHvXMDxmeVxXW29FvQCyw==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-zS1TuIG3Lm+DLV7Qc8tQ4gkDYPGzkzjXTGyWhgYdgjKPR+D0qAGMCGbB7OxXgB64Gkakt/cZKG+5+AUA9HVVbA==";
=======
        version = "10.0.2";
        hash = "sha512-bImG3W3xvOzoR/JqlH4xtIthWeyYs30m6Y1cGYnygNKVD3EBfeLNN0cWWJbp59kZcDJ1K2UJAkG/5YAawGt7vg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.linux-musl-arm";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-ynpGm1U2SgbUl5CJd4xkD/fFpHnmznBcNyj3ueZKJ1BbJTHlPqhYlYBafk7Ox7cRTDriDMM3D2fk1VsINnS/qw==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-JlsRhCKRKA6rMqlsz5D4TT/VeY+wQCzCFTQS+cIP7934vSVfWekG1FFokXRnPNvZ9wGDCquqHscQr5URgK6aVA==";
=======
        version = "10.0.2";
        hash = "sha512-0dm33n+2EZwRxS1ZzqdA6rw0sLYFCWw9cmAZYO8A9Qev/5neG9oVLVEm0l+caC+kkkrLiMkEdzxc9Iudc9Sb3w==";
>>>>>>> master
      })
    ];
    linux-musl-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.linux-musl-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-6ZezOJwdDRIfrrPCAknmbIPTNMMfEXkTUJO9vuCcfgHQ8oFjxny0KCXwciqSdjqi9hAvXmKgWMVMNg5o+FR1Vg==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-jwynqne1410/fXvhegoJxfjq9JcPxvYqpS9OePp8yVsjnCd2x9IHaik/iAHQmqFbIKgVCpAPH9/i8hfMGumnow==";
=======
        version = "10.0.2";
        hash = "sha512-qx8zKUGwHneBu6eYEuXGjkYRdhGvfTl/hZ0OJ8s86rKZRGlIWuCUlDx68eW+1wK5SxqTLEgqgjq0bvkq3D+rGg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.linux-musl-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-/ZPx5RCi3sfpyLF7DrDK237tZLytYDPEa9Ib+oO632IXilfDjii9yTzpcfISsslqfqtQ11QCZFipns6zDQOS3w==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-buX4rr2ZZUjUfvoF3wlCSLUHEKpaFsSkx6+vAbG4uVNJANnUZM/1pc2nl9jg8THFIvIPfCQI3siK54nWsFnBkw==";
=======
        version = "10.0.2";
        hash = "sha512-ekzeTBQ5DB5XVvj2umshjXXB5id8hQLAKdDtxS9NCFkdJBccBA/sraSpqp9u7wMLtcPlXWOASFCwS6h81L3Dvg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.linux-musl-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-OUFaWk1hiJoLXFwDfLCH4JHJ/0xsQ2lY4jSEQkvlWdHc/PWbqzSNI9aRpoq3uRTt80F+EgdWOXBxGh6ptgR8PA==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-FmU8A9e/gY+LGGqVgr6fbk3swgzO5xTMVCUpcbYid/CUw80T+KbYWFeaSIn3zuTGIdjP9zOvJsUYiuBdgN4GbQ==";
=======
        version = "10.0.2";
        hash = "sha512-YdkF2zZqU3+7SVZb4tofbryj9kumZqUTtmvoFVGnuN4GUQteXkJYPYfyPUmzTJf04+e6uGjlsC5J6D2BkXxjSQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-musl-arm64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-FFcu9QPseX6zA1Tj+iT1xfNCGTFfj7S/9CMA+DX9XEFogLX92ppstCFytX9U+wD30GjO81eaRE1CEtijmFf2xQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-eocUfeHF8PwhbrOfzSYXuKVMwCZ2T3VFoW2mRX77buB8G24sfQ+LXtppBN2+EQbkd9mT5QZNR5gqV6rqfVFeAQ==";
=======
        version = "10.0.2";
        hash = "sha512-iysJBEOAOvEsEbw/XIqnsyb11ypiT1tsiO6LHK6hfqEp/CzMDu92HLGMwt1jydxneItCyAnPXN+Tod194uRShQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.linux-musl-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-qfHzimy78Plho1+jx9eBIFsSNAU+mMvxpPKuqzeEbIWpCnJDETWNrSbtGnujSE2HBoYwmJ49TPmKd7yM3HyghA==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-WwVSD1gSgf73RE6tHGuoD5kDMqmYd5mIu6B3Ay2jO8MgejtfRO1qNoa6EHcq0ouVS3EIDRO/oi4lWtgzHqLHdg==";
=======
        version = "10.0.2";
        hash = "sha512-oGTR6mRZiejQJJwRuOWQGUXbgA0VFnJ6gXvtIbJ2MqyGJ3CdnPQXfXjcugPOLQv6anGwv5ycPSgnJ8LhlbbSkQ==";
>>>>>>> master
      })
    ];
    linux-musl-x64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.linux-musl-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-QVZNW+lsh9meR/nvUHsTQuQ9jCYmJyatejlwYe/CC4wxQ/A3mlcI1WraeDdLNSCVse5WZdJ5hSSfsY3AE5ZOvQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-4m7+jTuPtHvA5EGAWArBHUvRyNyLT59DRSMZbnKmA+Okz+B+WyiJDf81NefDfbCxuVRdsaoaM0NYj1BHQ1Z2HQ==";
=======
        version = "10.0.2";
        hash = "sha512-2+Km8yDt08pAw2A2Vj+NrecNe/nOXORo+PQ3zZey31SsG1ZHInWgDMGAmumrhoTHlddKQB4gutJOXNsm0eladw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.linux-musl-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-x1zk7wFbxXSaeHvJhGezULy8sUXjZgB1x8wgBcD31EaDqiQIxJWEfMKTdKbu7EPbeGvnwW+5A8j8gRKPKukQiA==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-KlfgMF/55W4r33hu1KykghyeqLV0uSrBId4ax/Rrxpj8yelJ9E4iviSiLARrbNK0uDtcZk70hTKsQyrjpCMWcw==";
=======
        version = "10.0.2";
        hash = "sha512-Q9RwIBiRsu14iuf5j5cGN7tX4w86KzYs7sEB+z/ljPy8YajaKub5OWkKFpK/D/eoGQwfQ8G0hlYWLJSQ1Myhyw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.linux-musl-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-mbBB5rot/iBZapI/e/pcKyQr+dk/o9AufThK7fvKUCb18ghG43+ndf1HcInYMlfsZNDUFUeh3fkK/LmPDggXJg==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-eTF3DTUCRfvUseH012DsX2B78VEn9Yq1q2t3X0RVYzP0ueuvkjJzSBelHc0VDtYEoyNMIkK7pwAb+d9FSAtgHg==";
=======
        version = "10.0.2";
        hash = "sha512-XkH9MRV6B4dxnndADS2hSU9m2eHZD9b8KNn+OUuuxdeSW0FsA3QeEilHbqw5PcCKVgwW+R4fNnTJUuNJg1KhKA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-musl-x64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-oZaaGwczV9wuWxcqQI2Mo2wJwk1jQIFwDl5y0+A97CX2Lv5UneF72ZKG/SwXvt0lBB6fzA03FlEeGA24blhlrQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-MW5+A2iatX6vjD2XjW7RlOJLBbOtZxFTYb4mlPHnG+N6NE6cvarXyAgR1+dQhWSc2W/kL7SFNnSF5GrtfV9pTw==";
=======
        version = "10.0.2";
        hash = "sha512-yxPz87vqvsaWs86eiDgvTZ9y6bg59eQoQXIWONAGX2ZCgzh93f26vpbMqnrwDV21aJv+VIabfo06eLehCGcMMg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.linux-musl-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-3ktoSG0rgamlYB5FPxnZLWw1bNlJCNr9/WJfFNKGlGFiizx2zA0EjGlLG8vvxqHhCsce1VtwOl1GLdUUIklH3w==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-4ar4h4IHFuZXo4uDArhDRWG10/M4rNLLkilexfEDVHiDxsWKdQKn3brLAU5QDbk6zAr2u7xwWyQ8toZLA3jQ9w==";
=======
        version = "10.0.2";
        hash = "sha512-hz/T704PkGX0SgQCuWR3G0IiqoVerAeTU+2pMP1lwdDjvBWUM7WJqQFUYtkwhgBchwmDt16i8xyC5sQh4nj/AA==";
>>>>>>> master
      })
    ];
    osx-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.osx-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-wmQLkkkEAlnEVm48luVyvy4pqcFWQvgQZuecmPsBx4dzy9LHfqAJUG75iabbZrITfFknI/6kMg/zuKS5mgmo/Q==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-tn0bDgKsgZOCHkkpIRfO1yzM080LcPxMUhtaHEXcOpWNtZqmqRmyC7zfiaQPmzdKDgJU+urZOJWq+HvL9CCJjg==";
=======
        version = "10.0.2";
        hash = "sha512-uVsmW81TSWHwcLczyP/b4XfM+dvmuK3z1dqBUUXFaIxWdTRgZj2NNdj+6+7IB4oYbuHrPVRCr/KSZZvgaRjFQA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.osx-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-RlTdys7S+pnl/X7lYgDCSyZ6PxIdUpUJTn5XjNpnjD3zC5SNUFLs496lvJ0gJZ9VLC6t2XfSMOjYz9a+JP7yiw==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-YmmSCR5t2MB0IJ558DLHg4pA9mhm0GVbO/eWBo0Gp32qwG32e7BiMHaPz6LxMkVNjS6kIxO0YpvRtnEpMnHBHw==";
=======
        version = "10.0.2";
        hash = "sha512-JRYATohpyzJYqYmogrlCb7aw4jR4Tyg54QQClPTMM8VRcZmWpP0vosV013MFigLRZh/HudZS3wifIiejamsqMg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.osx-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-eiXRjeXKspkSrP5clwRTWOAkd7O9lf3m55BPi20tkGL07y4YcF9HxVAvyaPbo27VA+nwxOYZXaUOjg/t9X4rmg==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-axo6Yu6u/tHfPe/Gtv4eo3/L9ROYcmAaxWm8w6Y3ak3JhgkuHZYexCyXKdnrKiMXb7LDS2x1967gm6gmkg45/A==";
=======
        version = "10.0.2";
        hash = "sha512-zM3+pQ2Mw/HKEnxSfUGmC+3cMv63irWkTHjm9fmcxbGP1iEhATvix7LFeM02n1xAY5E4nEAddRsOYS16nsaE3A==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.osx-arm64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-iSfcPVNQJfya+QhDIHtVEiYj4Xo0UP3wJ5NPiDEE94t6Ea0M146YY3QzIC7osQKWfyF7vMEfyFsKMalCBl4lFQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-pydxAJPjEDsEBXqW05fYoabondN7ReHzAiCERQhsrOCEHGTg6F2VrHOGMEkLFdi3/8NJnzSmCqdLMjvoxhk34A==";
=======
        version = "10.0.2";
        hash = "sha512-uQxkmfdQxKIBqaX4FwRjeeTAJIbjKyNFC9gjCqIg1o8x6HhnHkhUGCpm2S0oekf6/HPuJuCFDqfW2285N3pffg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.osx-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-gxyenkkLwMRnyfQdF/Uyn3K2Op6hBMdW50Pssfh6Zu68vBsRimGxiVpOirJCwtNwBy7wCixAnAYKjfNtj4U3Bw==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-MNtC4Vnbgwmb8KFfsdp+Xu4yQghA/cOjXYRBx0Imk+2xPgBkWExCFwbtyX3g/t4dYf8VR/uXGJc6/FFTMhcgvQ==";
=======
        version = "10.0.2";
        hash = "sha512-5fAbHxsLlD8Q+kpXY9uGkzpqpBseTSUvsvg60LYqg/u26nHEQ94qnePsLakoe/L6GAeZEbpNWlX03yb/KPdgQw==";
>>>>>>> master
      })
    ];
    osx-x64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.osx-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-4oN9SfJRyuZdWXYKzHDnzJef0Ido/YvIKtbtPNnGtz4eNc4btIUlWdJsu/oSM4gKnnLqEmNjFuo8UKDNC5YYeg==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-xasWHsXTFRyUCMa6t22nfqwNeEh5hwLvLcXNXDAt0EGbYrV2YlehkaHRwsAJLqyA7XwTrUmyqMk0wUCCGlUJmw==";
=======
        version = "10.0.2";
        hash = "sha512-ntZYKY843uFBZTfDSs0wGEc5NA4DAN0bG4qYJhbjK71y0A1k64nh9/h+EgZaC8Iv/X9peBAu7BqiVveeVBM+BQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.osx-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-QKgOoiwk92mYG1vCdRQu4koKpWQ3Y9ERouCGpK1tVoYnmHVWPhYFjHHaL4206ho046gWr1+e0D+Y9l7LCccazQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-OYxudIkO3yIJqwn0y2h85UI4WgNyB9kLx9CAvTDweN5o91iUs1Dq9ZNPCBKfQsp7xKKN/5uGgJyn+PPMGFq/lg==";
=======
        version = "10.0.2";
        hash = "sha512-mspuFi6Bb7a6U/Yj0YIMIHKKUuIXMU/a7BZEdTYrQ51GKM7KiiCkQeduudaA9g9kMuXisEpNLgSxwSRTyyC23w==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.osx-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-aCt1Bk4MXPmKeUFUDnwBYWVmgHNhAbDU5RdgT8X2mu8UIKIjaS36bN7iDu3NypRFrhrQ7U7kBqmbIiYaiOGFig==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-z+Bsoq0132LKbcpA8dHIOwu5OHerJHShJGHd/UdIXfJZaohwFSId73kZhRdGPl2m05R+u78EjUzsQXhyqkUjEg==";
=======
        version = "10.0.2";
        hash = "sha512-CoAL+2H0G83cFvR1kJmmLT9cmS4FKg0iAbhhcSnPfnF09/Cw++z8vmW5g9QSrSuXJQOqnwcDzZvhfonpPkYnhw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.osx-x64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-GKAsTBMD9cWoyAfxE+f1SLYEd9GmTvgL+ja4ebk9VElHk897OIq3KkdVheH908pFVk5nMk6VG8tDJ8ASLk0Bnw==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-xWNVQRYqGLRo5g4T7CVy4U9n1bzYVxdOzQhMIUlRAK/y3Yj7Cs6OIb0frSw3utwME5ewU3LAkWtzMAPEGuPzJA==";
=======
        version = "10.0.2";
        hash = "sha512-4eSx/T57ImkGZEeybh1M1uUdkN5UFJnx8TXGRR4xDFv6ih1pd/msTSxyoE7pq1Mx4BQG53ai8IRjCEt+Rou0gQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.osx-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-Bb3F5goFfxZTcoKuzBhsicvqi1a6meu/yvRSknv2sEq9Ql/YxivArBRhrAu/qd6I1zjd0P6KR0pAHoQJr3Pojw==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-JCrbiueBGasaUfvwTiKKj/4pzWzdp30vIzOYcUmbfCX8jtR40Ey8aHtt3P+LFKKeZJAOpOOv22gk0B48P7Ah7A==";
=======
        version = "10.0.2";
        hash = "sha512-ca1S6b1HsUIv++ryZ0dyD0V/OZhgzCIn+cZ7nEkLxYk5r8XhYcoFUr2ST5Ij8rBuWedxXZo3/xXgMj2uk4o1gg==";
>>>>>>> master
      })
    ];
    win-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.win-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-AnuURu28jW2vaqROOgmSTubgLvJmPrvx9hsQayalJY3DYTK2yra1doHisll1gUKZC3qvKBZ1+hJNXeppkQHPWw==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-GdcFzW7htuHsledWiqNj8MYUCUpnbOtcze0jVDnfFzYny8jmTAKk4SH9UB+r/TTFqGI45dzrSb6Jqx8Hj+W0ww==";
=======
        version = "10.0.2";
        hash = "sha512-3YiUtVeAh2d6ppaKiHESTipjRn9J+EoRswCqBkY+y56VU38667ki21L9G6Qtnuim/wGUoBJRiEUhHwxyzI9aGg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.win-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-wA4ZHHB2+LGAaPq/mUH/NkOSihQAh9YO3OX7iAuDHB3B/MRJj33GzvH2+tRp9jXcaHh+Ttf5lkNqG8OnPg3uyA==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-8BzG1X4h7fsvb0G+1fzeV56jgbI6OG8rf5iNqGFytCPbipYyQGVd+kJ26MwmhrW71wfdcSMw9W6vQVnHXGXwPQ==";
=======
        version = "10.0.2";
        hash = "sha512-1R9u/bZ2HFLAm2YMp3EvfwvfTk2M+OVtsXQ6nunOPFUFwR35oPFh0uzxz7dVRC8oJVUw6xKGh0+miqMIfSQF7g==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.win-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-1i+UpeMReEmRFef0CwVJfYbwsxrsAse59S4kcs7dKK+Md1yiZwu6FZbvHLbCT3H5DFtkXAk5fL3ENXSK+sQqxQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-I1LC2hpV2Z+At2MMFdzMd91L96UFMOH10++IQqZqDASBsIYdgPHPSigamndBSzZzHmT+xyXLls3D/7ZD0rsTlQ==";
=======
        version = "10.0.2";
        hash = "sha512-2//Y+ZXy4cnI05lZRR6K6aK62nbTXxKc72YQ1o5zfevEZh45ddfa7hoxAEwOtHUUAY/bNW098C5jduKFIdHfWw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.win-arm64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-ac9xAIob4JA3rJy0XQLVG1aBSO7JOEER6mQLlvhqz1/OTmmXfLpOtKHNJyjgEqXS7aROKtBl/kXFwTawP/gV8Q==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-tGH9kq8v79nKjYDmNMgMcmpfS75eQXBakfIc8cgz2kh0+u+QO9r6YWhkXOPlRB48B/vVLxj9hY8c3kUY6iwBcg==";
=======
        version = "10.0.2";
        hash = "sha512-klu93uPOOXH0IFXcUzsX1SO3iixpQJep0O+EvI8ZejUqCzVscZxaLhdPo2RESZ3ZQ93PisqaOURIegxPetV6bA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.win-arm64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-GDzC0UW+ac41G5pGlmAL/TSCz8S0JdLcKC9EsJgGcp/sETaizV2s2Gs5uGRETE0mbp8dtM9y5mIIiFTKZ775Gw==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-pBU/rw1TcVxKoLctkrHcWpGHVi61ZMJwaFXTWRO5Wayp3EVu6buWTXew8PmgFnVwqw9GvCBiqTvCeabTh2kVgA==";
=======
        version = "10.0.2";
        hash = "sha512-ELDgqORIXfWu2d2NdNhaPgxMdl1lz5msGcyHB4DUaHhMj5loHvHO+1bEzoKH/CNhm8w+4bJUlv5n8/05WvrfIQ==";
>>>>>>> master
      })
    ];
    win-x64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.win-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-7a4V5vDv4BifmfYvswZ+JF5j6YK2VOq5OeJIN2GWLJmVMxVinoqa6/5274Ayoq8SwVSq/NIp4DTrhEZoDv4HVA==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-sFadl/LMITcaxnci2Vrvjezfhd8bOh/2Nseu7oU3uVKxfVAS05V9iV1m2QEDslcd1Zg2DS+HlhEWgxnud8l5Kw==";
=======
        version = "10.0.2";
        hash = "sha512-Bl48t37sVydjn2l5TYPABBSninGzESRnCnvUIQYF5id6nv4rqjyhvKhoSb7voWa2yPJav+FsIMIGAro+2imfgQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.win-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-hJj/GO2/WVop763MG3A7FCXxdhGAlcNufi3gHsfTrT7CU/h3bok8MrFEftDGMLV3fvtavYnu07anuOE7NuJz8A==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-stRyFS09mf1ozhRbS9bLTP9/8gmnWw0haRBzfqrkdqdghbu2uArih2SPuJEN5d3gTEsszbHToGk7sCjKw0zRhA==";
=======
        version = "10.0.2";
        hash = "sha512-d2bxCX6NFCcMYTNbZ0Oy6I56ajoz4sf+dOMujtZXPdEny8x1VXmlnOPduNbJJ1SsU0mn2KuBxal+aXXAoiFQrw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.win-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-Cg8BYqPyw9X1IDPoOemNXKrhwLiG6xnvFffvdE0l/W+mbAia0zg8Nkonf/tI7dZOY4d/eGd9f5TTzQurqc4a3w==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-UcUlPpehQPt77/Zs/JwyENXtjnOU7YdwM7Kcft12Iai5pofK4DMC4kQLBjKQiCG8Q4RElUnEW+DQHmEGR0fz/Q==";
=======
        version = "10.0.2";
        hash = "sha512-VTUGNbYiXId/gSmlS7n7e5PDvT48exI0iSypc6dmBdFF1n76VckUImWsee4qKv1rYND5+HxjpDgI/QBJZNThBQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.win-x64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-JiDZBYHfDprEvhh3QWNBASUxb61G1btj/4kOKvybERrvvBgAM8dRUms9kwln76Iqt80a9Tv9+1XSqDmTvfBgkw==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-KodAts7298I91d/RCZh7i7SbS097npbbunNKOga01IxPtOh48n5Nr8fdEuZX6X7wT4FuUTX1O3glVmCf5uWX/g==";
=======
        version = "10.0.2";
        hash = "sha512-QydAFZqEkCKSBKGHx0sfVeBeUSDIRX8y5/aUo9ntuMxMIKmkOhsYBr8sAhJogFBWF6ehhi2R5+m2v/H3fJmziw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.win-x64";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-kdQxCDmxgc/uSxVbqvqlyxfr+CvuYzTqObN6JVBtqeurt0eiQLOBtGA/IsCFq5aobvMbstIu77HNMgQr5Vlb1Q==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-W0TkFiCX18X42x/7yLigJz4dFJypJshxdjAkSdOBC7UIN10EIqecXuid8/xXF/GHfn5T01o5W7OXlDm5RTXodA==";
=======
        version = "10.0.2";
        hash = "sha512-azfXCpSBFyf+5MUNN1IjkfcT/gLh80Ax0+oL6jdhHbCTmTtz83L82rYOS7UuHpm+OHa11AuY+9cOwk22GOS1cw==";
>>>>>>> master
      })
    ];
    win-x86 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.win-x86";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-Ulra8P9i36M3IwYsqfRkaUfqfqjoqRe1G24q/J9L0k9WZmzD0PxqYxpjio0QuHVTmSWi3a7xEpa7KEBgwmBliQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-FgeLN8BzZ+gCGB+ozt5uxVzwFyknYNCXEJfwTEEgJa/oUBaIgtpq1rsah/wp9CQmJTZPp+lS9lPR7DvSuhcL7A==";
=======
        version = "10.0.2";
        hash = "sha512-/dNKatBdluzzBp1wxJ2XDpii1B6W5Jp6G6BjjFkgLQigeLyS4vfTmmvMhoc8dMxVPv90qBLMBvihJOxKMOol7g==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.win-x86";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-MOmzynPYMicjlF/sdSYLyEgKGqtQH+gbttOuXWfi2u/VZbUJlHyVn5BUdu+frEbMMFTeUrIg0laHDYN6rw7ZkQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-/Q0UxPmdQvB4/GqMlQl61tUvhczN1ZdS71U7bErK3V/LRX/AFWhN+pT5TS60EC8jn2JKBis9XzFJjElg3DilPA==";
=======
        version = "10.0.2";
        hash = "sha512-RQ6TKhWakOaRkDj3SRnzl14BsMYvFqIrSdPlhYSndryEtFm4kqHPAGzdx/L4keNzmF+vBjqOr1mcoFbPvn+Ppw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.win-x86";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-wPnoZT9XXBOptQ8UkqHR6ytEJxgv1Os98/dXP/944B3P/fWVdyLN3fDq4EOf+FYR9QAIqdH3tHKHgLJBl16RyA==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-d+l9pyTsQ68aO4tg3bL9v65tmjdMYRbqBdcjf5xrVQolac/EuR6ur9Ht5d0YVcOjoPaiBZMwwJq0e4h6rBhUsg==";
=======
        version = "10.0.2";
        hash = "sha512-cHw6gtxugKdA0TtJfxBfeBG+AZV5iu84Rmztir92tDETWHqKkWGN7P7YzPFvbvuZyqsRQ4576ml+HabKzxOSlQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.win-x86.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-lQA5qngftZSocjMXUDwG76A3HIt9PnzZRkBCMDHF4mAWOzvCY1nWq4GrfKNFEohakD3bChDn7SWwcR8/FrGtzA==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-vwi715pWIe1EMVJW85Cp6YLWDDcuSu5XVqNsTu7J6+NpuYkdGxqocI+780SJ3grRRwJ2DARXTCzKQyF2J1ZRDQ==";
=======
        version = "10.0.2";
        hash = "sha512-l2sFg6gy4/6cjIi0f2DrInKf3os7uUXKoR2MUnA+Xk8SHegj/4P36yDYk5hAJSK6eSuJvChacT0gYanjxyXo6g==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.win-x86";
<<<<<<< HEAD
        version = "10.0.1";
        hash = "sha512-NwbW1q119szIwzqZSguA9zKTxj9AZHTLtfTct8isPh1oBIDEYlPd+FBAM8/Cuc3jvnzL0sMcyHjW68y1xhC0uQ==";
||||||| 213fed0310e3
        version = "10.0.0";
        hash = "sha512-IC5RonQHDTRAjs4hShcljsrZuaIHypR3gb0iF5AT6OWv9ZbspPKs8yEtWTWpkZOp5SDdIujOsYG2872NjLjnGw==";
=======
        version = "10.0.2";
        hash = "sha512-WfNDz4vH7FIptb4Gpdm1emxBDmmEbOZPRx+Pj8dYGWU5fp7NUxoH02Py+aDjo8bQ/oRfWEiNktMNlvzrb5cJcw==";
>>>>>>> master
      })
    ];
  };

in
rec {
<<<<<<< HEAD
  release_10_0 = "10.0.1";
||||||| 213fed0310e3
  release_10_0 = "10.0.0";
=======
  release_10_0 = "10.0.2";
>>>>>>> master

  aspnetcore_10_0 = buildAspNetCore {
<<<<<<< HEAD
    version = "10.0.1";
||||||| 213fed0310e3
    version = "10.0.0";
=======
    version = "10.0.2";
>>>>>>> master
    srcs = {
      linux-arm = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-linux-arm.tar.gz";
        hash = "sha512-5lU5pH1swNiqvAMFAbcCWL1Ht9zIcfsPsr5KK1qE18EdntOXddCIAsclb7K8e5h4LaY0LHhXr2CcESAJKNXq9g==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-linux-arm.tar.gz";
        hash = "sha512-UIO5wgVxY5zJNZDoY8Ac9rN5/EyxKdHrdJh4jnGUsNohs4oYTkmt9R3sgBPEVxr6pnEeNPs85jmc7U1yzpcsIw==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.2/aspnetcore-runtime-10.0.2-linux-arm.tar.gz";
        hash = "sha512-H5JnanfShBkCzbPuQJ7m2gknjOlK/kxv8v/NOogkOVvycotN4cBYnhpgb8GZL6NGBv3aQmnbdYOCZd53pZhRRg==";
>>>>>>> master
      };
      linux-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-linux-arm64.tar.gz";
        hash = "sha512-hfK4U7yVBv/RoIbSjfKI6bC/8+yhKQCtjvRZ8uydU3+TQVZN16bf7mU0VVUJr1FVTGucsWh04x7xQcvPbszM8g==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-linux-arm64.tar.gz";
        hash = "sha512-DtAi96eivwZgstTNy5SlREubns6H8ipgogKRN2MP2ROFxhoZsTAegb7zY7W4kJJNU6fIJOWL1O3TJ3I6pyxvtQ==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.2/aspnetcore-runtime-10.0.2-linux-arm64.tar.gz";
        hash = "sha512-UuyBSS1tQlPADX9R8S1f3bECUs5mTbAgxKkORDPn63hiUpc3QA1YYvb7pByyvPIj+ALgHRlLgpCM6EUwsDgAsQ==";
>>>>>>> master
      };
      linux-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-linux-x64.tar.gz";
        hash = "sha512-zQEXTFKi/4EH0k62HBjbRGOeSnZLElp1OCUdJq0+RFf1JVGBwE5umqHTpKCE3qAHFSpEd3tS47Q84Pro8iGoMQ==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-linux-x64.tar.gz";
        hash = "sha512-czFM9IFfVR7m+YAnODZWjGYCD95+h7f+J/giS7bs5ednvyqA5CvFqtOD3LOMgj9LKyXQ//y7D71z+oLyDmbozw==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.2/aspnetcore-runtime-10.0.2-linux-x64.tar.gz";
        hash = "sha512-Qez+am755YeljxM2/mZ+kFhfC8oiJ+JdDek0DGNJZ7GA74x8k6Yf45CUmp/dweZWunF7wTL2lH5uRQ/PxJZgIA==";
>>>>>>> master
      };
      linux-musl-arm = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-linux-musl-arm.tar.gz";
        hash = "sha512-bzraRU+hDVsYZW0JuvKP+B0+D/fxNwO2PwN7DUFoz4YwC88v8qINiW/dUZuD0+owifNLV4lIbF5dWmFb5h0W/g==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-linux-musl-arm.tar.gz";
        hash = "sha512-fBYkDoRVRPx5OHfjmYcWujkACEbUUJNwZfw/Rn35pv9Ugs6/4odXtx4eUZq/kkWepIFvVUlXf6mk4ljKPKfkAQ==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.2/aspnetcore-runtime-10.0.2-linux-musl-arm.tar.gz";
        hash = "sha512-Ow3eDGvpNdp5qT7oOIUCk1kUuFLYN/7NORweVdovP8dmzEgxDXjT4HnFAZJOwTeyILhUaYkxndVGL9BEalh14g==";
>>>>>>> master
      };
      linux-musl-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-linux-musl-arm64.tar.gz";
        hash = "sha512-CepnOa7tOFog8r0wJn+lMLAoFOQPQ6UJYww00smjIZq3S4yDcynVCJaUP7RJZw9Ak+/gm0ug+HbMzj7b0StHsQ==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-linux-musl-arm64.tar.gz";
        hash = "sha512-oKAL1Ru7E9QO3ecHbffwTlhtkurZedieiIF32NgW5nVqyA2UkddOikztceQlx1MOntjZROwN+xi/JczCHSrFAg==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.2/aspnetcore-runtime-10.0.2-linux-musl-arm64.tar.gz";
        hash = "sha512-Kk7JYczua1zWK7i4Phbfyw10TJqY5LYx/rn4Iti/x+DNlb2kTwNGQ20AdafDMMFEZPIANiAjkmbe2vEnvLedhA==";
>>>>>>> master
      };
      linux-musl-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-linux-musl-x64.tar.gz";
        hash = "sha512-74S4vPsyOhGsxX5UBo4f99qkAL1ciuuJxl+xP7KtnjAphmR0lVYaDE/aXrTAg2pn5eflkdWGYfIM1t3/l9bUyQ==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-linux-musl-x64.tar.gz";
        hash = "sha512-Txi3/RJiEjZLfKaMo/Pw1jNYzIcXL9cv533iVniNk0CBRCHBYwMXIkjwxyl7m5a8BpQXXEHveM4iG3vQLPlMpA==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.2/aspnetcore-runtime-10.0.2-linux-musl-x64.tar.gz";
        hash = "sha512-eo7hBF/j0ADJkTNmcj38DZ8GmslYJB4WWPwnrM49FpIudC8PX4AMocIT/JYg5kYucOt2M7SoJx/gl35B9rPs3w==";
>>>>>>> master
      };
      osx-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-osx-arm64.tar.gz";
        hash = "sha512-G51+yS76MVGfcX5YbakVASYqTLvgR4b7FnLGPaDymuatWS6jLVFoh7wAQlOcsAz0ZNDjT3D1wsRK+I1tY3menA==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-osx-arm64.tar.gz";
        hash = "sha512-T7Fx/53sxhuazoI6HBZcUKbTz3URjqxCpCKQmzd0apz9CaKAF9cBwpMZ3kKnWnds9jhGugTV4PfalkuoHFMiTQ==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.2/aspnetcore-runtime-10.0.2-osx-arm64.tar.gz";
        hash = "sha512-fmslTLilSOWRYaMTNqdffb0hSGzXV1zAjU2CaEutmkI1KAb2c/fe7zuKG/tPGwhv0jBWWnkSXx3TLEkSqwuzgA==";
>>>>>>> master
      };
      osx-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-osx-x64.tar.gz";
        hash = "sha512-KqfrNjlgr72ZRQe0T7z0Y4MDgJIXAlOkM1OY03qmCkB9Qvs3sBj00Er4fqJwhagh4SNKPs4y9P0AnL85RijrLg==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-osx-x64.tar.gz";
        hash = "sha512-NnZGSVgijMmjjZbacxfJWVM7cyV1LxDBo7JhZg+geHmc451AQVOsweRgo4C0ImPSs2nOUbO15p5+GdhBTcTE9w==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.2/aspnetcore-runtime-10.0.2-osx-x64.tar.gz";
        hash = "sha512-jDQunYnuv48DulaNg2UtHqOrYeyLge6K9xS3WynIUHYtx4gOnevLSWrtntnDIcogI3xLG2pMM1b0ku7HyaOdsQ==";
>>>>>>> master
      };
    };
  };

  runtime_10_0 = buildNetRuntime {
<<<<<<< HEAD
    version = "10.0.1";
||||||| 213fed0310e3
    version = "10.0.0";
=======
    version = "10.0.2";
>>>>>>> master
    srcs = {
      linux-arm = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-linux-arm.tar.gz";
        hash = "sha512-s6uWHK46WdCkFBFnlUuDr/JbWnTy6Uioo6qYjL3W58XYrLI5WSm26L5uTwEs7Z8YU/d/t6fwDd5VnzAghIJkIQ==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-linux-arm.tar.gz";
        hash = "sha512-QwFryp+QAr6Ks0cwEkL+8Dt7vQDtNPt7mmkIcZuD0PLol77jlUAmzCcUuCFF5kpJv/OG9MBK57YCQUNNyH4fhA==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.2/dotnet-runtime-10.0.2-linux-arm.tar.gz";
        hash = "sha512-z5i5zxRho0UPESyJZvhAnwGtff2EHO+PVIMQCm/a/zubb7tBsNWyNa5AIceyslQjMhfCmnYv9EQ30c5jqNGlRQ==";
>>>>>>> master
      };
      linux-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-linux-arm64.tar.gz";
        hash = "sha512-ErorzR5LCXdDxCtIoRnHMpPyaYRCKNhd5WV1foG5NmgWkh7o5Z2pgwjzO5CR0xegANVLhy8LSIrbBTwvTRZjYA==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-linux-arm64.tar.gz";
        hash = "sha512-hvK1vLnVbCqjUxTz7tq3FbvCHzPGb1xF/OP3PCKsFwHppEQVoG9wMezof0+4SBqbj6m+bwMAmDGe5W0pWoAV1w==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.2/dotnet-runtime-10.0.2-linux-arm64.tar.gz";
        hash = "sha512-WS8dyTkQ5E+A47iO2hsf6IWfAHhvnSk4+bxMFHAOdHgFXaRG9lz98YYLZ1dudkWdFsAtObfw9RJh/03QDRMO3w==";
>>>>>>> master
      };
      linux-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-linux-x64.tar.gz";
        hash = "sha512-4iTPHpIqrfmG+kc7nr3ndXjoWa/t24xFsMU2ItZJeedyEMsCcTdQ9IJCkfi5NNjagkk3TqLfWWEMR0HDVROZDw==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-linux-x64.tar.gz";
        hash = "sha512-CuiWaDRehaPEl3zXLpRIDgVYuupJS//q9pi7W+QAuMp4trWPihAk59Ihy8375oEDcucu22Ec08UATJeS6olAsg==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.2/dotnet-runtime-10.0.2-linux-x64.tar.gz";
        hash = "sha512-KAlMAxqH84THTqhVxl8XJIL2MkP1+HPbVU4DPmg6yBcU+mVNyNjXgEQHKWlWewkz9HzqaZ3q/TDZb0D07iT4UQ==";
>>>>>>> master
      };
      linux-musl-arm = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-linux-musl-arm.tar.gz";
        hash = "sha512-tspt7EwPr0GR0/VWVT4dVbKskeDRNusxmf67Wz9oRl74q9RVSsomy0Gg3r5cCYyQJDglpZTFobQEyjiqT9XNGw==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-linux-musl-arm.tar.gz";
        hash = "sha512-2/5QzZLDXLS43yllErFZzeZxOLnzJT7x8T3EbxgYWepLl1OVmpb5pPCFHAFwvvoxilD74+KBk9GFwViqgFndJg==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.2/dotnet-runtime-10.0.2-linux-musl-arm.tar.gz";
        hash = "sha512-SX+8LjqfuG9dRXYHESBR3p8WFM/Sy4Y1Miqv0yIYLrZx8Cs8PB1gT/hxtO7CcJuCE/x7xYrqqddrMFQIOF0udg==";
>>>>>>> master
      };
      linux-musl-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-linux-musl-arm64.tar.gz";
        hash = "sha512-IeE5b1EmdWm3TAO71BHEPOjpBG6iFqOKmMbtOfgPm2frs95fIUhn6obnRtiRBb4N4U38JLqMCb8eokLsL4RS+w==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-linux-musl-arm64.tar.gz";
        hash = "sha512-QqCC260s+X6+BK1wtULTug5/3ldtE3zGNxRkH64tzOT77+VqEnccSfyuQY1Kc+BHnEIPODEWn8mRXBmcoyykAA==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.2/dotnet-runtime-10.0.2-linux-musl-arm64.tar.gz";
        hash = "sha512-7LkzhT8ktz+320FnLl8umF2NIyO6nm+lW3TYl7C4G2O+H97FiA0qTLwiRXyn8JZQY9FtgG2sDSbEq5udOqoO6Q==";
>>>>>>> master
      };
      linux-musl-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-linux-musl-x64.tar.gz";
        hash = "sha512-J5ZqJ01yzHu0cuWLzyOPee+g14LB9sPpmsri91almDbZpne2BIy7yFjQbeoym4ZiAWd786M4AXseC4/sOCtY1Q==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-linux-musl-x64.tar.gz";
        hash = "sha512-ZNCAY9izOVzxAQw1LwM94sPN56VAkhnpgSuecFP15+Fp2IyIaQJUw5/qch2agy3NPHTdmv8GRjB4RFdUvNnkMg==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.2/dotnet-runtime-10.0.2-linux-musl-x64.tar.gz";
        hash = "sha512-aOcfikL1nvZWCqD6WDKL2+EUjUzK/o5qP4wyebU73VA2qdbW7CsjTcdNYmA7SXyqub66zi73uCYYRNqdyPDxZA==";
>>>>>>> master
      };
      osx-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-osx-arm64.tar.gz";
        hash = "sha512-73SiKCmEApnGEdQwmNXlz8wfhlWvB3J/Doyz77xazaQP+r2QvhM6Lci8PpDPxh/C077rPUz7mHdZ3RSGPAcBIA==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-osx-arm64.tar.gz";
        hash = "sha512-r44gDjHbURrr5QygLR/GNNe32HaZQP0E9fv5mZQW9Iqf/uWFjpGEdRVSKYTGeBXOYYmh/RH1VAsT8r1sf+bDew==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.2/dotnet-runtime-10.0.2-osx-arm64.tar.gz";
        hash = "sha512-1DgZKrtJRYZgsHfrYhyj6JWlidtCA+LDeXjJfLzlFyMhjl4PAHjRjF24a0miZRNwPJNkRNb3ELoJPMioN/hXyw==";
>>>>>>> master
      };
      osx-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-osx-x64.tar.gz";
        hash = "sha512-AMYHFNs3LE9X9ABcl37/3gjVFyh3R/mSdpagXJLap6oVfehAFjKm1cnHydrEBu1woneMESwuPNnaSQV0d3sfyQ==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-osx-x64.tar.gz";
        hash = "sha512-vAgFlrbpLQdbQ/WQknazbb3Nrjr6eUE/c1RVQLeaflpAOzdRqXYlpOBvEKLhZuGhBZgHbP47PNbkiPWS7hrF+Q==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.2/dotnet-runtime-10.0.2-osx-x64.tar.gz";
        hash = "sha512-EII395s6S8V1o/SMjec4/GtnZFyXpUZUMSFSD2/h3extpdhCRxWHCxzrlpZjFE5KbiSEFKKi6TUJNFqHrR1QFQ==";
>>>>>>> master
      };
    };
  };

  sdk_10_0_1xx = buildNetSdk {
<<<<<<< HEAD
    version = "10.0.101";
||||||| 213fed0310e3
    version = "10.0.100";
=======
    version = "10.0.102";
>>>>>>> master
    srcs = {
      linux-arm = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-linux-arm.tar.gz";
        hash = "sha512-XlIsgA/1Xm9snfMOOJL+F/r4uiL4RGP+N1wmC2JT+eFbVzTv6OEvqMJYGLAhAqfvCpXIVuHImI7nrAamL5awNg==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-linux-arm.tar.gz";
        hash = "sha512-RfLX/QVnCloU+kgIieRZIHgid1ddug2kTCWZl9BZ1kBwtArHqunww6MHbZ/tW3h4VKir3C39tHg7RJwFwcm0nA==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.102/dotnet-sdk-10.0.102-linux-arm.tar.gz";
        hash = "sha512-oo7/9bGAs5EvJsZcSAKs2WH6LXUaLMKJulcnrnAlPXCCW61O0GAZp2AapUIB1GZrbcrLmGmw/UVGa59bJdbRXw==";
>>>>>>> master
      };
      linux-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-linux-arm64.tar.gz";
        hash = "sha512-kjj40aytONFDMktAmcqh2BD7V89ZnyceiHLh9c1niqU9ToUEram41Hhp9FSi96lpkAahfKDXUPCaE91BdEhkHA==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-linux-arm64.tar.gz";
        hash = "sha512-JPwrEFq4SEw0IT71esTmo2plkyQfDrxs8KQOwvX+otdt6FxLh7KlOBTRlOMuwSiN1QU81vUnaNec0KyUjL+E6g==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.102/dotnet-sdk-10.0.102-linux-arm64.tar.gz";
        hash = "sha512-ElQUEVPSm1uSbg57CxcqJfnAlrjtahgvVAYsXgtBOEsw4Q4r8evobtD1j0/3YiA6zYO88j/vtZwHr0UzLXlHAA==";
>>>>>>> master
      };
      linux-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-linux-x64.tar.gz";
        hash = "sha512-BENgJFXTCvUcgZ14Bem0VVAQHDcYrLs+xfmR5z0Y55sY+1vHzfd7wwiTapYnUXayOlbpYTPn3oOuYMoiQLxgLw==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-linux-x64.tar.gz";
        hash = "sha512-9426wwya8iMNZ/9cIk3jpdv2P4p40cIGWU3tuA5pCdLMip2GXVEFxywv0qomb8DGx33trGBAjLzPJysRa9EbBw==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.102/dotnet-sdk-10.0.102-linux-x64.tar.gz";
        hash = "sha512-et9A6OVUeXA5HPvkdMOHTGkYzjV1rDmPN2x4UCE04cii+j2prKKB/a7agWcfVshR6+nnTFtXxaKYvUXeumNWXQ==";
>>>>>>> master
      };
      linux-musl-arm = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-linux-musl-arm.tar.gz";
        hash = "sha512-IZQSpeOp8Za4E2hBF8fQPKpWb/kY91fJ8oMtfYddgCgdZnNqpEJxq0kr2Jyw2shIYMUTCmnePWXsQJxf4pBS3g==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-linux-musl-arm.tar.gz";
        hash = "sha512-WlQ3WEUQGcKcncMiDDCVvlI0qa3G/l3Mw2eIaxYKkHstaoG+j9PA9Sfp7IMnA7JUbeyBqN8oAtn271YUCC4TsA==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.102/dotnet-sdk-10.0.102-linux-musl-arm.tar.gz";
        hash = "sha512-dex5Yn41X5Ya34sybyhU/psqnVQmqoJiKMg9umdGv52VWPG0n0Q1f2DfEnJygTL/TkAzDBwTg+JhMxheOUNyPA==";
>>>>>>> master
      };
      linux-musl-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-linux-musl-arm64.tar.gz";
        hash = "sha512-FO8ujIewxxkukNSlS/RNexykk27vBxjEeSgZbk/oEhb6Www42ZDgP6KssNiH/B17gk3kla+pwZVieLbcRIex7g==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-linux-musl-arm64.tar.gz";
        hash = "sha512-X7lEIc5Ylvs2tkvQ+XWoPRk4ZBIF2J9EciyOpEoD+1hE2f7m1y+SrFY9EEC3buPx5j4vc4RntDKdLqvtDFsEyg==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.102/dotnet-sdk-10.0.102-linux-musl-arm64.tar.gz";
        hash = "sha512-EL4fPyUW+8EEmtj8sAvRK7sWotIPcIts0Bd82HddAenewQ7B++S1cNfIKxWMt0XXfo7Gb/C59WMnd4Viuhp3vg==";
>>>>>>> master
      };
      linux-musl-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-linux-musl-x64.tar.gz";
        hash = "sha512-o7Zp6AY3bCncNaHty+9BD0kjOjWvnizYMYBF6QhL/SnzuvgRtoonYLchJqGQNSzGsQdj887Nq7O733vRtd/SGw==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-linux-musl-x64.tar.gz";
        hash = "sha512-L7fdybIypn9pJiuL7rtfoiPahskxTwdO15sVGnu9CxtcNr5UgNNj2CcJrmn9kPempFHvaAJuBAZYFDTtKIsg7A==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.102/dotnet-sdk-10.0.102-linux-musl-x64.tar.gz";
        hash = "sha512-NYbrjeIk11hb9s/SD0ieJ8CiofyMsQfH7ioHvq1Ise2wJB9S/rzw4vn1/fPs488uL5iLFJFmlHRFGJ50BmUszQ==";
>>>>>>> master
      };
      osx-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-osx-arm64.tar.gz";
        hash = "sha512-EVB87W9S86k9oPEjrl6JrZVc88+rybPvGXxoqZvKW0XnmoJc+TymqwPtH4t7F4Mwi701+rnxFyEJGzUVkm8r8w==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-osx-arm64.tar.gz";
        hash = "sha512-DunHdPnGNgGERhm2fWyoKdcPomuZSbgI6AE4DDXtsS5MlBi6+OLvi6HcbcfTB9v1gw+w9Pl2ZgMqORxcCX7mBw==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.102/dotnet-sdk-10.0.102-osx-arm64.tar.gz";
        hash = "sha512-WtsSpyzP0yf+lM6ZEE7nubVtvkDjVEQKCygxOkmW/zTMhWDWBcHzDCR9NkrkKd5V2MOzDqGdoEpxagWetiuY7Q==";
>>>>>>> master
      };
      osx-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-osx-x64.tar.gz";
        hash = "sha512-ndwNd2X1GC6psKyI3NAr5a9N/ExHs0BsD+efy8bYA/ZV1xgrOnDHoMgXbcAsaVZXFZOUPw2GMWW/enuHGsx5gQ==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-osx-x64.tar.gz";
        hash = "sha512-WVw8ZhpwWiVvUuA+Ou64Z1Otb5qj1Z9IcwTNu7dEo59OP6ZEWmDN7WvHjhL1HVLtWhg+pwoFYLlr7WH7g5WPgQ==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.102/dotnet-sdk-10.0.102-osx-x64.tar.gz";
        hash = "sha512-VCDVyr23qkwOGoWQdHTayHPSDMxb8oEGgPCk0fyd6Ujpt74V80ZPzea+gRyFtM4pDstlhfiSB38Q9A2q7QMkng==";
>>>>>>> master
      };
    };
    inherit commonPackages hostPackages targetPackages;
    runtime = runtime_10_0;
    aspnetcore = aspnetcore_10_0;
  };

  sdk_10_0 = sdk_10_0_1xx;
}
