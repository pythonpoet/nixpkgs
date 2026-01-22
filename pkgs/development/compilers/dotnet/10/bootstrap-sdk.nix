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
      version = "10.0.0";
      hash = "sha512-HcTzMfT74z2wx5virCUA8AgviXAfP9LO3ToUmCIg9AMGK4ohrUwhfQWHK4EE2egpEk1jKvDe1ZPPlX9csgCMlw==";
||||||| 213fed0310e3
      version = "10.0.0-rc.2.25502.107";
      hash = "sha512-hz7scU+GeR8opmEoYFby2mIzR6Q/4/XqKrb4XsusXHFrIFNnGiyuO6pYVEAy/AmUZ97YCy6m41ybzAuKLL7m3w==";
=======
      version = "10.0.1";
      hash = "sha512-dh+mzIMt9nUXWglf7N5h26eZg5MvQZGMoqY2i8mLsWrXiycCqF9AODB8uto+Yh+eH+wPX/B//0l44TLugJka/A==";
>>>>>>> master
    })
    (fetchNupkg {
      pname = "Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
      version = "10.0.0";
      hash = "sha512-CDUeukQ6yClE0KQvgsUJyegl7w2ORz3c3L9kBlqhOiNwhg8liiwA12HDGqYwrQQPY/oFSzLp4XpjwDZ4mVAWMg==";
||||||| 213fed0310e3
      version = "10.0.0-rc.2.25502.107";
      hash = "sha512-9qeh8T+LChz+UZYhAJcf/POP7WeLhRtyb4Z0+bmRnv0Xm5HPPmLqEy6zADiVU9aZyjPu9Ft0NtvLdcfzXT50+A==";
=======
      version = "10.0.1";
      hash = "sha512-flYAaRRqwcTWGzKAeATlOpDFf46EgWuWil2z/ik/lbC572R9Bb+pNL8CMstitLw07PxLEtckeIVUxrZaS0FGwg==";
>>>>>>> master
    })
    (fetchNupkg {
      pname = "Microsoft.NETCore.App.Ref";
<<<<<<< HEAD
      version = "10.0.0";
      hash = "sha512-DM2V40+lgsHLg7cUd7TWxRhdSwb5HgpHzImq4npVg3hAyh6xwKAZ9j/y+3nWG0qSLHc3t5FVLeR4bJO0PN3tsA==";
||||||| 213fed0310e3
      version = "10.0.0-rc.2.25502.107";
      hash = "sha512-a9Ul0tE8XV7ipMMHlbkhQPi6qpqiaYiGNZ9wTHJlQhDoD0AsKycbiYjWnsITXsuccOjAXGIPjnX4mwTNcD/VSA==";
=======
      version = "10.0.1";
      hash = "sha512-Hbru54m1Av0D8lGHGJ1gnU8TFYIewPbPo7cIBmj+XpUzj0TXid2zmYP19ehFjIX3gmy3mnZXWRT/M389OUDmRA==";
>>>>>>> master
    })
    (fetchNupkg {
      pname = "Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
      version = "10.0.0";
      hash = "sha512-XXkdkHkgVPvAmXDeP3HIpDlNTswlsK9fuIkPHVDYcmxRuFnEEc/1yEg+MikjA7+fw6TSy1AqkNdcyrjJjag48w==";
||||||| 213fed0310e3
      version = "10.0.0-rc.2.25502.107";
      hash = "sha512-lXNTcDjyw9E47AZE0w0AoCRIls+nBtOWb5t/QTbrNX+OgawCGKJn5oHTjyOrZ38wR6YdWQbr8wi1/B/pwR7gow==";
=======
      version = "10.0.1";
      hash = "sha512-PLdYmCls6trm8nFOUTVxQgG0KxssYA5HL+6WkNDSRfhBlXOhB349+FJjs/+uWtJq9bvrM93dbDj1abYmxw3USg==";
>>>>>>> master
    })
    (fetchNupkg {
      pname = "Microsoft.NET.ILLink.Tasks";
<<<<<<< HEAD
      version = "10.0.0";
      hash = "sha512-nmdgBAyTi4gyuP18U9I7JhVSC31+mZyyQQzmldKxkaVQCB5mcPjgvnfkJCQjN84VRFE++hXW0xBqPSbUuny0QQ==";
||||||| 213fed0310e3
      version = "10.0.0-rc.2.25502.107";
      hash = "sha512-KgEeHi54wovjvzjW6Ma4chuj20ux1s3dbuo2pvCAKjisOyc6hHS0Xr/LvAcnCKjafa0Q+HZ2IRZ+HS+O9VWA+g==";
=======
      version = "10.0.1";
      hash = "sha512-zvIEPvPiT21zN3ShmtYVOFogOPw7rsT9zBDenoThGsTbuu77Vh/X0RR+yFdl27Ec7iAxxgrtB0Kqsof0P+XtmQ==";
>>>>>>> master
    })
  ];

  hostPackages = {
    linux-arm = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.linux-arm";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-jlcG3SsEkcWQn7xUWuEU3uscK6rLQSCPNWO43k+enQHf/7mmsvAAu3DRHl2STsZclB/KrhQm0qgK/FiEhD9j3g==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-pYS9JBkV7rUMaHEESpR2rahJ2ZvaJNsdt4oa8f1WuPFG45XJ/2u12IdV1vsuaU+9f9rYMVfhj0iux+2F8LYqFQ==";
=======
        version = "10.0.1";
        hash = "sha512-QN3AEmYYq2xJJ9q0bpqHpcAHH19hwpOe6bdmiGBG9OR3FL8Hax6JiVi6qlRIB+9p20mnT1MiuKC7GxCPXWHabg==";
>>>>>>> master
      })
    ];
    linux-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.linux-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-UkVobkMgbeFCpcgTV0TvMUTzWlI5G4Ha1OlS26HKDzdY+AEhJ7UcymZ7SR16W3mw6mRunKiQtXuwtN+fZ/jE1w==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-O6kG5AngtMsrdyVCNqlpBUDcmeq3od7Ucg2xN43pyZOcwmLO7AHl49SKqniW5JyoZP4ZqWt4KwYM5mmw0XV3LA==";
=======
        version = "10.0.1";
        hash = "sha512-cIXpTdQxnIpp2o2EHRQ4hFLdMrBSe7k3/9Ce+0iz7WiIh4kr28xhGbO7fV3VH4T48HZyobNfNeBYfVz2tvNk3A==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-arm64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-fKoXVn60Ct8JOazjDuwpzGZSGqVHBXboJeyCWJQj6w2B2x0p3mOJkR0/kOifxT+E2NMX2Zx12VELKK9hAAOt2w==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-hYNGcBFVkmmJRVAryuSKJges5+CKfI459ksjbIkPAhUHGwfOQIpKcX+TppfE3jJmCSl+eQL+2lbZl1jiGHXtlw==";
=======
        version = "10.0.1";
        hash = "sha512-n8mpr3R3KhwERUidCsyfpSofXKW+NGnDAgLGQwUp3Duc/SyhNn2YEr3ezBYoTxfXi4tUYMSxwlaqpMwEdrFVvg==";
>>>>>>> master
      })
    ];
    linux-x64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.linux-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-+jM9DkV8UdrLkm6PyfbUpRJLOC1pVfDHlKD9gXU/1fDkFpy7q8RSnQ5GCbxL5o5U7q6lfh4rQ5FsCD0fJC+zYw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-hIWTBNODFZiqZLtHrs9hMTkXIDIcacrcF9B05YvzeJp9+0dFJiZYH1knXpDoTos3O5KwDObfb2nq5YirPBAPXw==";
=======
        version = "10.0.1";
        hash = "sha512-l61Khjl1xrKq1wVJVoUFb72oJON7ugf1OZK6r+XgMBxiAl1Yhm23IleWFn0Cj28ggaA1bgQ7+PdeIlj9JC9izA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-x64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-RfDDFGwkXvXes6pzq+Fl8RNweoSOwrQsjL++Zp1+DLY9uwAoKeDYjTai2Rin29MjmD5t854ZivDKP3X5HXYRRg==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-GR4jPLadQCCaS+1DD2v+/MQrSC+hFk0G1yEw2BbhcgQtYgxM2GtEPNEUPoIIss3YmeCM2vjXZBgLZtS6yUkZdw==";
=======
        version = "10.0.1";
        hash = "sha512-XKqUj0ZvBKGx+yY1Z+lObTbEvfWCtzhUjlcTYy/yJF0DOtrFJKk8PEyIu+Zy8RazidVAeP0O+191ha34Jzr6pg==";
>>>>>>> master
      })
    ];
    linux-musl-arm = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.linux-musl-arm";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-ZBdYFk/Myia1U4r2tFfidqRUCfMrW9mC+D9xHoDCDELpmysFcIdNfPIAdXa3jXwv+EfNbh1D2+l/pSASHSx0Jw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-YnnezTFKvLbmSjJSKxNU+JZDiz++ku2ZSNeTP0KYxuMKKXx0C86dR4xvbSqmB4aHd8SZk5Ka4UH6PUTDrEVT3g==";
=======
        version = "10.0.1";
        hash = "sha512-8L+yX/6aGFgFT7IYbCK7G8wESyG1qp9gWM9i4bsLKAOYjkNdhAkelqLIK0QdMBvAJBPw6ieWISWFxy/iDe/hBA==";
>>>>>>> master
      })
    ];
    linux-musl-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.linux-musl-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-THBCdaGd2SWs4ECp5ZGPi1vB1SiIiTEsCYSAegJayw2Ic9Ky0RdaWSA+Q0yfI2sfnSsd97Vk2dhHuzvFBgPFbQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-F+jX7XP8Fs4E3Tt/HekmuL864IUgH5aN72Gt8uEEtThjn7kl26c/gu05R7pk+57GOinv5Ob/bkTTXOcCb3S+gA==";
=======
        version = "10.0.1";
        hash = "sha512-OvXliQbK/L/Y7Hej0UsbkcjDdvGWTuLhQXh4NXyZFiuYB0qxjNYBDQ83RqCAGZemRv3KD3esqQECV80TEyDUuQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-musl-arm64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-YjvVt1y61529YYJzPuFbeFxBgekq8sDg01yudN6zKcDmacQhUtfx16xijd/9bcixH4HWCjB7tjEHLuDptm5m+Q==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-Ki53xQRuNgmsZ1sUaV41PMVABQKepRFEKsfUYBvyZy0e9hGDCV50wEcbCRhJj07WahcP7aMf7hK0s+yCtbp8Ow==";
=======
        version = "10.0.1";
        hash = "sha512-lKecrY73YGL6GCI71n8pOvM08kTA94p2u69gHn6AAjfQuWxReMhDvytqcARNtvqef98pFmaomyCW05COgyLzSQ==";
>>>>>>> master
      })
    ];
    linux-musl-x64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.linux-musl-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-fE0I9SJDBxOX+OTzbA1rg4omn21xp08dzm7+zHX/U1wZxy1TO/bRhcLlEMs5f+nNXN6/8f0b4eqsglqtZz45uQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-V9tGJ2/s5CYJeu2kCJAImHrJ6/a7k+1GgFgAjbUXcPghEhQyqBaVkekeDQbEiNBQCqv2eWJ5gRAxZn57LHEGHQ==";
=======
        version = "10.0.1";
        hash = "sha512-4JTjPEY+rHMEXBBd7ViWbq6wpqi+m29lWVvcUi0BYtTwdQfigkGfF8pjDaYlyEvuHxrGXv542uQqfLSfHnWGRQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-musl-x64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-Gubgq6b9GOrD/q+eXHW14RrxcYeWsQ2bl9jL8HZaR6kXYVWd1CAF1TjKbqFLLuG01pqvDIdu8R6pMxGgsWWKFA==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-IYdAy1GSZcd5i9c8PPotMhdCnExU1AwLHn12WQ0UmGg3bjTvtgVuFen7dkFTISqJn5T/3AU+89QG/d0oJTlIaQ==";
=======
        version = "10.0.1";
        hash = "sha512-RR0c+xowMKF/qxHvKcqwZ5VcTmImKXGRwJgSVpsiWN4tH8Di64KlN6lZSlj1uO6SocaOlyB13Kuee9thDiVf2Q==";
>>>>>>> master
      })
    ];
    osx-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.osx-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-lno9hyxtY9nPVBi/VUZeLS7ARDEMBJDI2gTp6VlnbPIJuYTyUYOD/tyo6bwHG62Ie0Tifm5gzR856jgiMvV6Pg==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-iXSGPUT4HxCO0wxmNM2dE2phDcC4W5BSJkjn2RnA/FC/tAVZD6O1T6SuMtgeA8m9vVVrSy7sA708J+j6zzyOfg==";
=======
        version = "10.0.1";
        hash = "sha512-p/Ln/LSzYwVi2XkhhPDi9kmXjtkcumL0Mo82PJRyfG15l9HkjvQlG0AXFW5yrjqo4tyNjdkPSAXCRpF1I/INjw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.osx-arm64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-C2VAFhG7JYz5QEkZGkiPgoJTiERvR/bwVWfEdTyijHcUqeryjm0u89qx5Iz5AOR6U5wQNej+2Pp5BdlEd/MKPw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-NOy0zl+gyoS8h1qUmNYxm/KSRWCd2sLAATH5KhFatV9GwGc/JHhJfWuN8oXaIWuHkXklWpsCgIE+BuEYpKUkhw==";
=======
        version = "10.0.1";
        hash = "sha512-CR7uuB7JDBTPMHS1YtUZBbZhlbCDgNiuXPhjVKTIO+rnt1fxKgwBoombdTnG+sh4Yv9ziB/suB+P1DdrW4yWiQ==";
>>>>>>> master
      })
    ];
    osx-x64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.osx-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-A8Zm2HoUc2fV03HqemG6BProBJYIa87mzjbBvKIDXMshispBmeVfbsEQGoJEst8KKi2vLttDX42qJdEB419eTQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-XlncsgNGIi18zQe0A3ANBDa+KG1tB/s2Dmn0jfLsPMjbyYTJuUpmVZvNgOequimdiM+pBWX4tvVqRfsV5hImww==";
=======
        version = "10.0.1";
        hash = "sha512-NDvPitCnrp5x+75klaO9EsbbRHL+MBRy5KuJFiMpd3TtkcbaYxvTrvPp6XxVgSiszXup2zq/Z0d/K4paZ7fksQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.osx-x64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-gbyYz6R9QJJZ5j6XtkG5asyKRcW6IvnXLwklvAvk4bkU0+kP7USIn+EtXyDqFKuiohPRzD+sHi04LmDqc+FRiA==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-Xl4KiHx8RuL/DSAAcxMUh1fNtaRYIKwzqoUxN6qrjsE9A5mlWlsWQ3CXP/DFkP1ooWoQEH/Cyk71IHQCHCKZ7A==";
=======
        version = "10.0.1";
        hash = "sha512-OdaZNmRxZcd8HC48oM2+c2NOB6HEMsaBbgXbXBFPuL3iNgef1CNjVbW810imCNf++HY1TFrcONztTeKc25E17Q==";
>>>>>>> master
      })
    ];
    win-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.win-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-/h0qoO2NaKn3nyYXFiXJwUFvcrAJgZVmkK9dam1UFaDHwkPSufBsTx+wsO6YFtCgtfsDM0K2yNlsiIi2LflNIA==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-cTSKXdydpMJx2AC8n0wvrHSx0aoHI0QSxo81D9w7O8wrxrpv9B7gPKU2j8/gpe5n6gSmdjuYFTT9GTbt40wpTA==";
=======
        version = "10.0.1";
        hash = "sha512-4QK9FDp+eB+kt7G1Ffes/N3NxxYGixPDHsj2IMw6PIFONDaqIVn217KI7zgLEiCRI3VDZ4JU/IJTkhY722LKhw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.win-arm64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-PtkF0VBMXdPyavJUUaCp6OBEhc1SeCz7oaYTn8y+TqczP75cqDXIUk7X6DL20UorQ0VmXBAXLVHv9ey6LP8Mbg==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-gWcOAXM1iT4NkVnftI3njn5aqLRgn4DXnpbW5BtRBcsqkHHlamc+sSdWXltVweKIsz/jZbCrEiMjl8sYOS3qmQ==";
=======
        version = "10.0.1";
        hash = "sha512-xift8Jf0S6+aCoYXB73jCr9TEQ4NoCkh5rjsXcNwRnWzTxYEmppAghM0ns06IIATy56gtvp0bHbd4dl9kxcHdg==";
>>>>>>> master
      })
    ];
    win-x64 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.win-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-uJ/dGjqaFz9YEEe5trIQk7dktkVgs1KWHsd42zdoPX+POC5JIp/aS8JFNECQK9tQQEZfgNeUT0lqfPJyGpP5aA==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-+itZL0t/HjXzRhKVFIvysPjiLRov9TY8U9SsuRE6JH47x2T7JR6u01z3zhYf6CF1N+omN4NqnxnUBTw+E9ubsQ==";
=======
        version = "10.0.1";
        hash = "sha512-D4ALEODccJT4Ts5Bfe/vi+boDdcnSpuQdIod24IMOahkt8N9DgRG8CTCvkyVtqYXFzStqtgqM2LyFxNMghUCbg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.win-x64.Microsoft.DotNet.ILCompiler";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-XHtJ+LmFsV0RRD1H8zpRp3+yzOstV/TaRwAg38b+8PvgXn+VEIVVHzlqWu/eB8AMPoVbC7b+OnOTTlBPf3R7+g==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-xxLmFZWpqUqIF5eSGlcJLFPTMclNWvPASqPdvLaiu8HtjtopoFC5u5Y2B9529XXJS3TZmaPQXkeiOscz6ux1fA==";
=======
        version = "10.0.1";
        hash = "sha512-Bzw38ZU4NqQoXOHybxZa/yMCspo56j68OSBlmNLs67a9Oesd8RX9TQSX0VkFlThbVSaDaGSWa4d8LA0gr2NajQ==";
>>>>>>> master
      })
    ];
    win-x86 = [
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Crossgen2.win-x86";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-GGEi3CB8BqkuKKGxaz+UURu8mBOkdiE9rd4CqQGL/cvHVFCRxNMXeSESLChfhy1S6Sdh3lnwGS+h2WgJpynTgg==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-uMUck4T50qnHf97xwLxsy6MR93BN6g8BvXFXfILFwPeN/8GhmXBJMOqRf1c7Lobt7+jHlQ3DYj0/z1jVwjnJlw==";
=======
        version = "10.0.1";
        hash = "sha512-y5Ic/dtL04mCLoGE+0648ddRUAYpXmGfpI5xRii/7rbRLpitsqE/vPRc8Uz6xUoH68dmr3yIXXkAaC+1kdgYIw==";
>>>>>>> master
      })
    ];
  };

  targetPackages = {
    linux-arm = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.linux-arm";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-EbPfMeafoSi4K2jmhzbiZx1WhwKdugSfXqAk/6WnsmWIVCJw197V4qTIBkBEJLLpGbQaziP9SsAxk79MOSPwyQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-mbrXpbknOjIMa8YNqzHO1HRP0V3lgHPGzFNYh+/VMmer1IqVt4FmlR4BjMeU+jfSW31gtfvaDFqu6YfKhobstg==";
=======
        version = "10.0.1";
        hash = "sha512-K3SqftZ19wzr/8Y/sl6auNzCJ83sQhn9+hyvRN3JklUnqtm2j214otdCFITgkHNM/Lnc7qA1K8UqzkBySeDq1Q==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.linux-arm";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-hH/j5x8f1hqMCqETcCvG6tQ57WCJkXI3sZlEOrw6RZpFeOpMpGIEwM4B0KutZxr5jZchfIcTL+ldJBgd3gOGDw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-bjlIIxeoCrqrnEjsk0wbzGTSv+BhdUR5SnFC33Ar5/CwMH33p/X+WWAe3Ac6hQLVdxeIuRrbxgceDsf3Hn2zIQ==";
=======
        version = "10.0.1";
        hash = "sha512-3f1VelSNNDqrROz1C13SV//JSS1vvRnnw1hAy6b0XQKosM4ZjL/z59mXh1mYq+RElBnWFsFJBKbHnp+xP+IBKA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.linux-arm";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-pqX0SUxgLA+StfLlXg7P6y7WkeYkjnaR0aTEu9B3NysInOlOq8LnjQMu2OhMIGSVjzPSU4oMr+YRiZUdtS7tfQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-j2y4ZAy0wnEAoOsteO4CpOao9Hz0zcvyeqENoGG4HMrYivzYQmXDkM8gGuKO2c2+77sSNYa/TjUiU3oE6bCmxQ==";
=======
        version = "10.0.1";
        hash = "sha512-/SFcpKmGhKPEdZ/dHoQuS7xSdVYtrGFGbypQxLTlQXi0CsPhfgQDeDwuvaYewfBw0GMsA9vFonluFeOlCzKmcQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-arm.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-PtWoGQJ5cxT03OEw98ZKhKQZTAko/aERH3C4LfWTajVfAJPpqR0Qv+55DWOnRO/r7qU/dleWzBP82A1FYeheLQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-G9AQlTjJJlOoqC+IZzaSzg6k0GAdXXeywa7rcMRHxtSuLeWoVakM5gBYwvJnWfSJ1kqJlIo67neV2vvBqwjpWQ==";
=======
        version = "10.0.1";
        hash = "sha512-HgFC59dEzjpoilmktWb62fjRcyaxmpJUmsKkSUZHFE8ymCTFKg366jIjZ0Hq0WfDfsbh0UeDV21fe1PYpbrOzA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.linux-arm";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-wkVQ8tk4CAF8fXfmieaDDSGiCRFuq+C1C1wtTPR8H3ZRZfCPdgj1Yhf/4npckbF51wsyraPPT/OBqTxyhqQZdw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-cIucCZIOGtVkjsvyQYuhPBBonOHwD2oGGSJNkizjXXHJ1Gp1/sIrAXPEg62k3uyKWPsiFqBSgsn1Wes0Wd0mSw==";
=======
        version = "10.0.1";
        hash = "sha512-o+3xquQZ9AcjndRpd60ccmA2kzNxMjBarQFwKtxqEm4m9X6reHxBU3Un1wlO5jMNxRHG05oMZGZ9NIcBHswSTQ==";
>>>>>>> master
      })
    ];
    linux-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.linux-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-uBPQl1tUd5cQKN9UdCUnJ0VG/iY8bI8WeTMprmqC+mBA0hgylsZjLUJfBc4I9EPMxNFOBQJwRjQ/uzt1s5FQSA==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-2VertB1ttEHJARtDySmH8Knon1/C1ZKho060g0Dqj0I2opdm6bPglHm7fwmVZLZNzWPUzk6j4OEs+0kdHEDSsw==";
=======
        version = "10.0.1";
        hash = "sha512-bQMhZGLIQlaHtlxb+1hsTLnggZF/ri8jsC4dAz3lAoon+MAweKz0qr6IpVAxChA6Nuhaop7ulyZTYhm+VzSPBg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.linux-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-JlSAx7QpIcdz3iOT1NCBybZ0+R4MxV2vkRtyfsGBzIzVYqEDjrroo4A7BfxN4H4xplf4w7l/AeQRsaeTR2M2yg==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-tQ6OaYTMlWXON+cBPGC1IVnveaF7Ctwc0SdoQzKN16icMNdYTD8ZHMlkcMYWV1GrPHXH/Dew63IeP6bpt6nYXw==";
=======
        version = "10.0.1";
        hash = "sha512-LhjhqX/Jwb3b6q8sBDs5pL7dpThlXEks/MG9+pcuGAlkmPQ+V25eiYk7wjlcxj+xB+A7NidxIX282KOL3Dvi3g==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.linux-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-yo//xWJuO0JpmZO0RaT5QIa6nvqB1MM0MieAtXuDXM4SZd4YJ8Dybz185Yo1NUexobapeIrKNLX002ceh7KBEw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-rjTcmCMvPOqxLpNWP5lot7tnK8Gk3LkWCkC1xhUJj0WWnCIkbrpa8hlusirRIiR2olKJAo/z2vzdcrSqkQe61w==";
=======
        version = "10.0.1";
        hash = "sha512-Wl+YcCJpTNVm67A1Os9tQ56cWMcwTti8L8ZuWUJSSRidYdaiDJUpJNfj7ptYsGNMAKue8vqbNQr3zQdKVcmpmg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-arm64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-/JnFo/nqmlFagNW7zCWaXXfq1L6uuoA27KDRrvVsDEduS++fUdimCWPWFeO/vFIzCSnYv+ImyjZVu831zHn1YQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-hRN3Uh0q9iu23qVFrPeOch3DdgkFDYRoGd+ApvmRv7p5w+lX9Fkxfu2m0BMV2o0QgbWDIlLZOKZq+AU64/3Dvw==";
=======
        version = "10.0.1";
        hash = "sha512-do8X7mhD4IdRKiWiVaxkx0O8iN1oiOAYOBa/+MJi0gz4EOdQr67a4hXvp7ZLuJQ8PIxqKfCpKk3aE6KhIY+mDg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.linux-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-Q2eKWNI659wTKYT/WntFSeA6DtTQLoFFOtn4EfVEug5oDxnJKwXfylptcw2cXF1UHmbnr3fjn41fmHF+lJ32Rw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-zemzdje8OMIrKzAePlCytq2akcdHs5YevVqedUSLp45z8SC6+058i/vI5/WeM28hQumAjFdWQz0jtEUC62u3xA==";
=======
        version = "10.0.1";
        hash = "sha512-UCAtWzIxDjl4PwXtxX54Q1FD4pcJRE64dbD7S5lbhTNt1JFwP59rrSoKUaJvXhZlx96Fq9FykXtyRxAmkvLXOA==";
>>>>>>> master
      })
    ];
    linux-x64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.linux-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-X8NccILKj/aEVjz1Gt50zGlRplIHbI+H6uRv2yFY9KioM+sKMgdbNTAsRp9QG4aw5RGA9IhZYxcHCQb8ATc+XQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-i6xet9EgM3zw4UcH6OzlIc4FaqODYS1hBf1LBvdKmIbFGp79pkCVT/s60eV1fu1eTQk4/cH4u6CCNdA/+jTDAw==";
=======
        version = "10.0.1";
        hash = "sha512-BLXeMOfMip9vq8+rce0+DgX8+DRmxjrxSeO8JOGiHJ7oD9rYHdX+pSqaakjwe7y7oMIDKm1MC4nJFFpauHlxlQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.linux-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-cw4mF+MgWPuVHWX4obxmRa7Zkp7ULDS6R3MlB21d6+x5WuDrEbunt/vCPou5LML3RBEFpKYqFhjxL1M9D3QJMA==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-2s/iuHKVirb0v2UV9v0D2AzmJS35VM3x7nB98Aur2MTq9gK1Y9CfklQErsZApPclBdzThIXUKdFYVHOZY8as9g==";
=======
        version = "10.0.1";
        hash = "sha512-/hDIh0U69+S/8FEYmYE8OoephfEe2nNxz1AgtWVEJ8JW0dn4oBj8kyBjCjI3bojYE/tJIdGOM+TyAuU6UFDQ4Q==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.linux-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-WJMtkEZM2JbiS7VZc/R2+3qUVxiCR+G3JepQwczM0qWBrsRpeVoXGJu/ZpDbUwr7AqzwJm6iD+aCbYpxK8Jlng==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-5lbYjjFzasjYa2NgNTFR5OExu6xDOjBteaUUv1efVC1acJYa6F7Sv8y9Duzq/GHB2SCnFr5e2RG4duzVKUkqkw==";
=======
        version = "10.0.1";
        hash = "sha512-JmbpFd85wZikAT/D57wINht5rtfsAQlqQG34NvSu3ajMk9hN1cZ8PmEuysoZVSGap/JGF3cAHP67Z7x9U8DKXA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-x64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-TBpxxlFyfNVcshnh9euvsLRW7/n1/Sti7CtDIBbOcyhP/STj9OOo/AWv5ZSqe/3KNhlM+G5+ncOP0G0hN39nxw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-Rxo9qZOaGprb6qXsLWzM09CHk5YiG5LwuuRLTA5r+ZymZnyDpo7VsmT2p97Hr9abmFe04inezbeItoqfTat7kA==";
=======
        version = "10.0.1";
        hash = "sha512-cauY/NbkxOxCmhXoJRq99czH5geyhEV0Nq3LBhZ18tZ+837Ta13YcpCMgyRpCh//aAwFzDtJSPhf7EZQR77cog==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.linux-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-DJwKMfGknpBwSQ/FiKbN3W4n0XIF/XFtwH6hxoD/2fRjqc6GZbOnoB/qfK5VOpgnIIMpZuCb599ftPtiO8aLog==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-gfO0It9AMdlFTffP5g+ZJrbyI8Ul6aS8MKwb+xNrVg/0WculnWhsFL+r6hIeSo+0XvScIK/rj6ukg9bF91yGXQ==";
=======
        version = "10.0.1";
        hash = "sha512-Bxt5GRmRSrp+CKyoVQoafibKtrr/ETe6mbkirLqP8+Twl3bAE/SVYqm53UiPH1HOIQBXCxAGkC8NwsmVAXpweg==";
>>>>>>> master
      })
    ];
    linux-musl-arm = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.linux-musl-arm";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-ZVmFe111GC5/EVm3SO/dbTUyhl511rjO1dpD0QNu1o4og+IRI9VH+5ZsgJFbhJZXiynKYzoVLWdOJt3fiSIrcg==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-2y1TmuKQeUeHIl35WTb8liWu8m2LD+HQq1HSSvmB6Mp/BCJjleO2TCnWPuuAh3P0FVKn0uK60CdgUJ9MOJqrDQ==";
=======
        version = "10.0.1";
        hash = "sha512-jwy2ibfaCHD1j72o/AHzv4bFtqeUXwpgAsph4URVrhFWXUepbRmV/50ehnyA/G+9rEPvvA1cD2ypSr9iZ1e/Kg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.linux-musl-arm";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-2FAwGl8huDfIp072/pQIQ08VqGGY1oGMSb57tbjG18fXLLPIzssWrfZVqOLFaBzgtDm8CbOaQ6HLmuctySxdFw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-MoImFJInSf4NYK3dpOIRgV0GYHLm69d1jXvNodphn6iV+PdsXX1KuGKtKhG4AVeO8Yw3Fl7pgxHnxsR9c5eqmg==";
=======
        version = "10.0.1";
        hash = "sha512-VGi4l0A3IQNk07slUkXuPgFIFM8UnuP/zk4Y9PLazuu0vb6q2H8LXE+iHoDapExAQgL8h5wU3nBGOXL3S1t5BQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.linux-musl-arm";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-lCkhhpyENYogBOXUBJWiO2DHsB/+vPHNDGSqhTttbk+2tET+IuVCafKphJDBrFoSj+3RUPz2oQpMaC4oJM6RdA==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-7wr08dBr7MK/SXrWzt83fwdT7xyH14SJXwsa5/Mwse2k91zu43QJu1S+t7ahgwn95pVsx35pzZpkGD78ZXO9OQ==";
=======
        version = "10.0.1";
        hash = "sha512-fmpIIKICgHRHHoxyU8YwMVKfIZZYw5ZCH9L+gLCogFLxHemlo0aYvwe2mIgoVJ0b7iDSng3jbZvgvnc7niP6vA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-musl-arm.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-zS1TuIG3Lm+DLV7Qc8tQ4gkDYPGzkzjXTGyWhgYdgjKPR+D0qAGMCGbB7OxXgB64Gkakt/cZKG+5+AUA9HVVbA==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-l8xBHbdF+yDgIiljNCMJGSqhFITeB2OiUdkaxkeSVRcMEAKpz6aBOtMgvbD7VswH3zKX6nA+kdpjWyXXtdIP1w==";
=======
        version = "10.0.1";
        hash = "sha512-YKF4Pa+VPrIWISpLmcKlIwxUVjDaEbp42a+dnFNY+RopgzFH3CSdS3OUpW0XPveSshHvXMDxmeVxXW29FvQCyw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.linux-musl-arm";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-JlsRhCKRKA6rMqlsz5D4TT/VeY+wQCzCFTQS+cIP7934vSVfWekG1FFokXRnPNvZ9wGDCquqHscQr5URgK6aVA==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-zXMQ4rzOYjdBPKLSi2YagXPMylYbusxZR6s/6NuGfgCnUNiaJqSmHv7SUsusDoRaR4kaurHVoHKn7P1/ZwNDXQ==";
=======
        version = "10.0.1";
        hash = "sha512-ynpGm1U2SgbUl5CJd4xkD/fFpHnmznBcNyj3ueZKJ1BbJTHlPqhYlYBafk7Ox7cRTDriDMM3D2fk1VsINnS/qw==";
>>>>>>> master
      })
    ];
    linux-musl-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.linux-musl-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-jwynqne1410/fXvhegoJxfjq9JcPxvYqpS9OePp8yVsjnCd2x9IHaik/iAHQmqFbIKgVCpAPH9/i8hfMGumnow==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-+OILb/rE2p6IlAE+2kd2fi+aowKz11Ydn/2e5HUmCOkGl2JPs/fx1WNGaFtFLzPGeL3NnRn9FDfii/wC7SWAoQ==";
=======
        version = "10.0.1";
        hash = "sha512-6ZezOJwdDRIfrrPCAknmbIPTNMMfEXkTUJO9vuCcfgHQ8oFjxny0KCXwciqSdjqi9hAvXmKgWMVMNg5o+FR1Vg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.linux-musl-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-buX4rr2ZZUjUfvoF3wlCSLUHEKpaFsSkx6+vAbG4uVNJANnUZM/1pc2nl9jg8THFIvIPfCQI3siK54nWsFnBkw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-Vl5f7lYlYbLd42Ivc+rcSpqXsTkdSVB2PIjl60zISBZ3pkC5zo9K2WEb5SreT9HJzS0Gccn4MWa8CtBINJg62Q==";
=======
        version = "10.0.1";
        hash = "sha512-/ZPx5RCi3sfpyLF7DrDK237tZLytYDPEa9Ib+oO632IXilfDjii9yTzpcfISsslqfqtQ11QCZFipns6zDQOS3w==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.linux-musl-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-FmU8A9e/gY+LGGqVgr6fbk3swgzO5xTMVCUpcbYid/CUw80T+KbYWFeaSIn3zuTGIdjP9zOvJsUYiuBdgN4GbQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-IBScSHBaist1VDe55jf0DI9FXnCs5sLz+gzznK5Da4AP4IJm3ouqp3JPkuwxVIManPfXKpTcFGb61G6n/zl3/g==";
=======
        version = "10.0.1";
        hash = "sha512-OUFaWk1hiJoLXFwDfLCH4JHJ/0xsQ2lY4jSEQkvlWdHc/PWbqzSNI9aRpoq3uRTt80F+EgdWOXBxGh6ptgR8PA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-musl-arm64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-eocUfeHF8PwhbrOfzSYXuKVMwCZ2T3VFoW2mRX77buB8G24sfQ+LXtppBN2+EQbkd9mT5QZNR5gqV6rqfVFeAQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-Ng5H5Hepl6+6I/qLFGCYnHwlr9t4UAk7zjksAmK2PIVO2dz60AHY8jijDHPtZ/VF/C5YtUi7qOos6KUu3rHyiQ==";
=======
        version = "10.0.1";
        hash = "sha512-FFcu9QPseX6zA1Tj+iT1xfNCGTFfj7S/9CMA+DX9XEFogLX92ppstCFytX9U+wD30GjO81eaRE1CEtijmFf2xQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.linux-musl-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-WwVSD1gSgf73RE6tHGuoD5kDMqmYd5mIu6B3Ay2jO8MgejtfRO1qNoa6EHcq0ouVS3EIDRO/oi4lWtgzHqLHdg==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-9kfX46cD/zco4hUhEYEesn2zhqq6cTqKGYcNLiwQVUp5XJl5wwcsIGqQ2lA55YC+ZcecFCicWeJu5bgTNn1k+Q==";
=======
        version = "10.0.1";
        hash = "sha512-qfHzimy78Plho1+jx9eBIFsSNAU+mMvxpPKuqzeEbIWpCnJDETWNrSbtGnujSE2HBoYwmJ49TPmKd7yM3HyghA==";
>>>>>>> master
      })
    ];
    linux-musl-x64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.linux-musl-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-4m7+jTuPtHvA5EGAWArBHUvRyNyLT59DRSMZbnKmA+Okz+B+WyiJDf81NefDfbCxuVRdsaoaM0NYj1BHQ1Z2HQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-mpE/aLq3eo9B6MX+EGWEt/bSFfB1ZImIIj0i1fMsHjaVRwLTB5E5xDbQzjJWVEHr74F2FJISz2dJ0qC/wNbjtA==";
=======
        version = "10.0.1";
        hash = "sha512-QVZNW+lsh9meR/nvUHsTQuQ9jCYmJyatejlwYe/CC4wxQ/A3mlcI1WraeDdLNSCVse5WZdJ5hSSfsY3AE5ZOvQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.linux-musl-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-KlfgMF/55W4r33hu1KykghyeqLV0uSrBId4ax/Rrxpj8yelJ9E4iviSiLARrbNK0uDtcZk70hTKsQyrjpCMWcw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-TknoBknlA9KSB3GbabdjxGHX8xNCtuKM+hA/dhwUSyUN/0aDwLuuF5/pOb3q33AxPAMcaubKHcqpjPSiyuFKZA==";
=======
        version = "10.0.1";
        hash = "sha512-x1zk7wFbxXSaeHvJhGezULy8sUXjZgB1x8wgBcD31EaDqiQIxJWEfMKTdKbu7EPbeGvnwW+5A8j8gRKPKukQiA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.linux-musl-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-eTF3DTUCRfvUseH012DsX2B78VEn9Yq1q2t3X0RVYzP0ueuvkjJzSBelHc0VDtYEoyNMIkK7pwAb+d9FSAtgHg==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-fPUXXXvAGqmwme+EnEhx0koHPx/nIgZLDjw9wLOQTOOt8HdQboKebk77z31/mM5lDgmruUEwfOEP35ZnzpEdKA==";
=======
        version = "10.0.1";
        hash = "sha512-mbBB5rot/iBZapI/e/pcKyQr+dk/o9AufThK7fvKUCb18ghG43+ndf1HcInYMlfsZNDUFUeh3fkK/LmPDggXJg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.linux-musl-x64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-MW5+A2iatX6vjD2XjW7RlOJLBbOtZxFTYb4mlPHnG+N6NE6cvarXyAgR1+dQhWSc2W/kL7SFNnSF5GrtfV9pTw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-ZMmkniq9nGb6HmzdHgrYqUh4KAWqPS3LQZXe0c/TL1U2AYaM+go+05kkWYSD85phnmERUHDmgMEDo1zipqOFVQ==";
=======
        version = "10.0.1";
        hash = "sha512-oZaaGwczV9wuWxcqQI2Mo2wJwk1jQIFwDl5y0+A97CX2Lv5UneF72ZKG/SwXvt0lBB6fzA03FlEeGA24blhlrQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.linux-musl-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-4ar4h4IHFuZXo4uDArhDRWG10/M4rNLLkilexfEDVHiDxsWKdQKn3brLAU5QDbk6zAr2u7xwWyQ8toZLA3jQ9w==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-UHHIErnjcdbTe4ZSGoJtDZ6PrErZCLpwRBDtE6/wARb5jBl39jXzS8Ol+MCpZ9sXjyPvuv8sTt7LVmHkdriRgA==";
=======
        version = "10.0.1";
        hash = "sha512-3ktoSG0rgamlYB5FPxnZLWw1bNlJCNr9/WJfFNKGlGFiizx2zA0EjGlLG8vvxqHhCsce1VtwOl1GLdUUIklH3w==";
>>>>>>> master
      })
    ];
    osx-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.osx-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-tn0bDgKsgZOCHkkpIRfO1yzM080LcPxMUhtaHEXcOpWNtZqmqRmyC7zfiaQPmzdKDgJU+urZOJWq+HvL9CCJjg==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-K0a2aLkcdAzrnHZa0OXcKu8i6Vpw4BYLqF0jK56228M6pT6W1wiDQbolSo0a2tU2omjQTAS/Zpxt+BeH8W+6Jw==";
=======
        version = "10.0.1";
        hash = "sha512-wmQLkkkEAlnEVm48luVyvy4pqcFWQvgQZuecmPsBx4dzy9LHfqAJUG75iabbZrITfFknI/6kMg/zuKS5mgmo/Q==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.osx-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-YmmSCR5t2MB0IJ558DLHg4pA9mhm0GVbO/eWBo0Gp32qwG32e7BiMHaPz6LxMkVNjS6kIxO0YpvRtnEpMnHBHw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-l6ue5zHQwXVQeFTO+knYTZdfdaMMaK4k3wHidQUQ3foIA6y6RSdBx7/UvkVfQMNJijyGgOK/oliNa79BItBV/A==";
=======
        version = "10.0.1";
        hash = "sha512-RlTdys7S+pnl/X7lYgDCSyZ6PxIdUpUJTn5XjNpnjD3zC5SNUFLs496lvJ0gJZ9VLC6t2XfSMOjYz9a+JP7yiw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.osx-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-axo6Yu6u/tHfPe/Gtv4eo3/L9ROYcmAaxWm8w6Y3ak3JhgkuHZYexCyXKdnrKiMXb7LDS2x1967gm6gmkg45/A==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-G0rQT5lSuWK0gQXzEdwHU/Xs1Aa1xF8VNsvSpb0o/CUYqI6oO02HVHA04+cYCh/l9lBMrqb6uPSfUqDzhu2I8w==";
=======
        version = "10.0.1";
        hash = "sha512-eiXRjeXKspkSrP5clwRTWOAkd7O9lf3m55BPi20tkGL07y4YcF9HxVAvyaPbo27VA+nwxOYZXaUOjg/t9X4rmg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.osx-arm64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-pydxAJPjEDsEBXqW05fYoabondN7ReHzAiCERQhsrOCEHGTg6F2VrHOGMEkLFdi3/8NJnzSmCqdLMjvoxhk34A==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-CaTNddVLNUsBB32zjgkGUl7V9nlaIzp03PF7FhM4bIprWoZZ8RqYJB7Nte52W1XTiGqc1ss/0CvRFCaGnTK8sg==";
=======
        version = "10.0.1";
        hash = "sha512-iSfcPVNQJfya+QhDIHtVEiYj4Xo0UP3wJ5NPiDEE94t6Ea0M146YY3QzIC7osQKWfyF7vMEfyFsKMalCBl4lFQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.osx-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-MNtC4Vnbgwmb8KFfsdp+Xu4yQghA/cOjXYRBx0Imk+2xPgBkWExCFwbtyX3g/t4dYf8VR/uXGJc6/FFTMhcgvQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-mWxo7u0R0Hl7D9E/SNp9Uw1AiojSojv1j0aaDp3OEIHKoGi3iuzYu8Nsts/9D08Ec4vk87TY0jrreKxyHlvJKA==";
=======
        version = "10.0.1";
        hash = "sha512-gxyenkkLwMRnyfQdF/Uyn3K2Op6hBMdW50Pssfh6Zu68vBsRimGxiVpOirJCwtNwBy7wCixAnAYKjfNtj4U3Bw==";
>>>>>>> master
      })
    ];
    osx-x64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.osx-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-xasWHsXTFRyUCMa6t22nfqwNeEh5hwLvLcXNXDAt0EGbYrV2YlehkaHRwsAJLqyA7XwTrUmyqMk0wUCCGlUJmw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-bWUtvQ9r4yN9q+yT9EQUWUyo/KnStkvCEo1sfmVZily0aAjcH4ZT1B8qg1KG5IjOdHE9l9orqD/tY0QA7a1/Vw==";
=======
        version = "10.0.1";
        hash = "sha512-4oN9SfJRyuZdWXYKzHDnzJef0Ido/YvIKtbtPNnGtz4eNc4btIUlWdJsu/oSM4gKnnLqEmNjFuo8UKDNC5YYeg==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.osx-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-OYxudIkO3yIJqwn0y2h85UI4WgNyB9kLx9CAvTDweN5o91iUs1Dq9ZNPCBKfQsp7xKKN/5uGgJyn+PPMGFq/lg==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-he8tZSRxjBEYYFD5BCmjkb8AGIiE+34TPMX9d6BmSHTR9Z8hSjWR2FBSxLo+1+ePBvnWJj4+Mgt+bg07tGU9pQ==";
=======
        version = "10.0.1";
        hash = "sha512-QKgOoiwk92mYG1vCdRQu4koKpWQ3Y9ERouCGpK1tVoYnmHVWPhYFjHHaL4206ho046gWr1+e0D+Y9l7LCccazQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.osx-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-z+Bsoq0132LKbcpA8dHIOwu5OHerJHShJGHd/UdIXfJZaohwFSId73kZhRdGPl2m05R+u78EjUzsQXhyqkUjEg==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-+WUulk3XUCVctkBZg2sU5DTN+94xDu0KZoZjotxu7y8o0QDDzbc0l89QobAXv+HkH/5VPL+03hbTW43V7zyVgQ==";
=======
        version = "10.0.1";
        hash = "sha512-aCt1Bk4MXPmKeUFUDnwBYWVmgHNhAbDU5RdgT8X2mu8UIKIjaS36bN7iDu3NypRFrhrQ7U7kBqmbIiYaiOGFig==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.osx-x64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-xWNVQRYqGLRo5g4T7CVy4U9n1bzYVxdOzQhMIUlRAK/y3Yj7Cs6OIb0frSw3utwME5ewU3LAkWtzMAPEGuPzJA==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-bjIe19Dvrr1zm9YjOfu1XUxgZCFuEDs42oRfo7Wp6gUQWO3VMSz7MyG9hNWCsa/ZTZDUi6AJjpwIRyCXqEH0QQ==";
=======
        version = "10.0.1";
        hash = "sha512-GKAsTBMD9cWoyAfxE+f1SLYEd9GmTvgL+ja4ebk9VElHk897OIq3KkdVheH908pFVk5nMk6VG8tDJ8ASLk0Bnw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.osx-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-JCrbiueBGasaUfvwTiKKj/4pzWzdp30vIzOYcUmbfCX8jtR40Ey8aHtt3P+LFKKeZJAOpOOv22gk0B48P7Ah7A==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-k6/cqrVhhdxR9+xWomz3kbmBR5gbzrpfckUEofY+Ohj59MNdmVXmPCECz9myA+XAkFAY0vQ1MViqaf+TuEEuoQ==";
=======
        version = "10.0.1";
        hash = "sha512-Bb3F5goFfxZTcoKuzBhsicvqi1a6meu/yvRSknv2sEq9Ql/YxivArBRhrAu/qd6I1zjd0P6KR0pAHoQJr3Pojw==";
>>>>>>> master
      })
    ];
    win-arm64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.win-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-GdcFzW7htuHsledWiqNj8MYUCUpnbOtcze0jVDnfFzYny8jmTAKk4SH9UB+r/TTFqGI45dzrSb6Jqx8Hj+W0ww==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-ldyfSWeDI4RkCY6Mcj/N1KcPAMZKlAcEryoXnmTj7oh587JM/usoVNDe+a9EwQMA69mPga5d9XMkRk6zCsGNDA==";
=======
        version = "10.0.1";
        hash = "sha512-AnuURu28jW2vaqROOgmSTubgLvJmPrvx9hsQayalJY3DYTK2yra1doHisll1gUKZC3qvKBZ1+hJNXeppkQHPWw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.win-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-8BzG1X4h7fsvb0G+1fzeV56jgbI6OG8rf5iNqGFytCPbipYyQGVd+kJ26MwmhrW71wfdcSMw9W6vQVnHXGXwPQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-CYQAD3jv1uXiNLxd5aNVONW5Jsg3pILM1d4hSnPNTT58cUpJBM85ad8CiJJQOWnCOIuynthIRZEazf1zs10AAA==";
=======
        version = "10.0.1";
        hash = "sha512-wA4ZHHB2+LGAaPq/mUH/NkOSihQAh9YO3OX7iAuDHB3B/MRJj33GzvH2+tRp9jXcaHh+Ttf5lkNqG8OnPg3uyA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.win-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-I1LC2hpV2Z+At2MMFdzMd91L96UFMOH10++IQqZqDASBsIYdgPHPSigamndBSzZzHmT+xyXLls3D/7ZD0rsTlQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-K4eYnEoap+fFlDmPVpHQ35vKj8JAuAzBst8EQkAxRpnMYkdH6PXpUB6VMLfs/RT25fiESgEoFJjmVcJ8LpngOg==";
=======
        version = "10.0.1";
        hash = "sha512-1i+UpeMReEmRFef0CwVJfYbwsxrsAse59S4kcs7dKK+Md1yiZwu6FZbvHLbCT3H5DFtkXAk5fL3ENXSK+sQqxQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.win-arm64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-tGH9kq8v79nKjYDmNMgMcmpfS75eQXBakfIc8cgz2kh0+u+QO9r6YWhkXOPlRB48B/vVLxj9hY8c3kUY6iwBcg==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-/ffNVsL1eWoQB8I2O2Ehiz/e6B3KwesNAvima4B1gHgrZxjwH8HOdUCx1jl+OAt9A8IJckseCWlvATy0MRBugA==";
=======
        version = "10.0.1";
        hash = "sha512-ac9xAIob4JA3rJy0XQLVG1aBSO7JOEER6mQLlvhqz1/OTmmXfLpOtKHNJyjgEqXS7aROKtBl/kXFwTawP/gV8Q==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.win-arm64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-pBU/rw1TcVxKoLctkrHcWpGHVi61ZMJwaFXTWRO5Wayp3EVu6buWTXew8PmgFnVwqw9GvCBiqTvCeabTh2kVgA==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-JM3SUjoC0qYmZjhqPE/9PuitA9uYHMZIGgGYL42DEvpb3HnPz2j795bITCW0O9Yi+OWCsaWEK9B4l2pmMY1W8A==";
=======
        version = "10.0.1";
        hash = "sha512-GDzC0UW+ac41G5pGlmAL/TSCz8S0JdLcKC9EsJgGcp/sETaizV2s2Gs5uGRETE0mbp8dtM9y5mIIiFTKZ775Gw==";
>>>>>>> master
      })
    ];
    win-x64 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.win-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-sFadl/LMITcaxnci2Vrvjezfhd8bOh/2Nseu7oU3uVKxfVAS05V9iV1m2QEDslcd1Zg2DS+HlhEWgxnud8l5Kw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-zlguqkKffJpKnIVBe0ofS87mkD951sUxRlCzr7isu1IjvKDHriwsIx7wxLhsjZELXDuI1HlkV/7Xhi4cludhyQ==";
=======
        version = "10.0.1";
        hash = "sha512-7a4V5vDv4BifmfYvswZ+JF5j6YK2VOq5OeJIN2GWLJmVMxVinoqa6/5274Ayoq8SwVSq/NIp4DTrhEZoDv4HVA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.win-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-stRyFS09mf1ozhRbS9bLTP9/8gmnWw0haRBzfqrkdqdghbu2uArih2SPuJEN5d3gTEsszbHToGk7sCjKw0zRhA==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-MagJHz4q0OewlKxt6KAl2Qtzq2IegXeMWtk3bAIE8WFoDtLl1LwkOF3xnfEp+F4gIkv46jrbVNPMYqbQ7/yq+Q==";
=======
        version = "10.0.1";
        hash = "sha512-hJj/GO2/WVop763MG3A7FCXxdhGAlcNufi3gHsfTrT7CU/h3bok8MrFEftDGMLV3fvtavYnu07anuOE7NuJz8A==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.win-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-UcUlPpehQPt77/Zs/JwyENXtjnOU7YdwM7Kcft12Iai5pofK4DMC4kQLBjKQiCG8Q4RElUnEW+DQHmEGR0fz/Q==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-vDvBho8UNgWnLDKjOeKjAG+2a7kGJNO2XSF4vqOFTetEduXE/U9bFA0mCV+oDborDg6toHaFqctmW2WhbSQ/cA==";
=======
        version = "10.0.1";
        hash = "sha512-Cg8BYqPyw9X1IDPoOemNXKrhwLiG6xnvFffvdE0l/W+mbAia0zg8Nkonf/tI7dZOY4d/eGd9f5TTzQurqc4a3w==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.win-x64.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-KodAts7298I91d/RCZh7i7SbS097npbbunNKOga01IxPtOh48n5Nr8fdEuZX6X7wT4FuUTX1O3glVmCf5uWX/g==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-z+WtgZVatzoNkznwoffuv8tKjy8Nz7WA9fIYnxYne6EQ+ptOR8RppYJgIAixPB3tQ0+BpO2l+YtpI6kbDSXXbg==";
=======
        version = "10.0.1";
        hash = "sha512-JiDZBYHfDprEvhh3QWNBASUxb61G1btj/4kOKvybERrvvBgAM8dRUms9kwln76Iqt80a9Tv9+1XSqDmTvfBgkw==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.win-x64";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-W0TkFiCX18X42x/7yLigJz4dFJypJshxdjAkSdOBC7UIN10EIqecXuid8/xXF/GHfn5T01o5W7OXlDm5RTXodA==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-9VW7n8wkmweyp/87tyRSL0Abmc7FIZrbLIyrH6LiOgALNPkaFIfSJgxmDqur3MUTsQAAx50iM/YA0+lNALIq6w==";
=======
        version = "10.0.1";
        hash = "sha512-kdQxCDmxgc/uSxVbqvqlyxfr+CvuYzTqObN6JVBtqeurt0eiQLOBtGA/IsCFq5aobvMbstIu77HNMgQr5Vlb1Q==";
>>>>>>> master
      })
    ];
    win-x86 = [
      (fetchNupkg {
        pname = "Microsoft.AspNetCore.App.Runtime.win-x86";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-FgeLN8BzZ+gCGB+ozt5uxVzwFyknYNCXEJfwTEEgJa/oUBaIgtpq1rsah/wp9CQmJTZPp+lS9lPR7DvSuhcL7A==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-kjRe/NXF4CPbYAtPfng7zVkwIvvRSqzzylUMiZvxrotuXHUpDD5K8qXM4F6+XUQrzxLlZRZUg+OKuxswpFYU1w==";
=======
        version = "10.0.1";
        hash = "sha512-Ulra8P9i36M3IwYsqfRkaUfqfqjoqRe1G24q/J9L0k9WZmzD0PxqYxpjio0QuHVTmSWi3a7xEpa7KEBgwmBliQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Host.win-x86";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-/Q0UxPmdQvB4/GqMlQl61tUvhczN1ZdS71U7bErK3V/LRX/AFWhN+pT5TS60EC8jn2JKBis9XzFJjElg3DilPA==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-nYinKgx3/v4XcxNUmS3xyzF7LZbunqGCa0311lMC4KAVuP4fXqcUpBeV1HenBMVKnmsKMNa6blHVRebTNDqT2Q==";
=======
        version = "10.0.1";
        hash = "sha512-MOmzynPYMicjlF/sdSYLyEgKGqtQH+gbttOuXWfi2u/VZbUJlHyVn5BUdu+frEbMMFTeUrIg0laHDYN6rw7ZkQ==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.win-x86";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-d+l9pyTsQ68aO4tg3bL9v65tmjdMYRbqBdcjf5xrVQolac/EuR6ur9Ht5d0YVcOjoPaiBZMwwJq0e4h6rBhUsg==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-qQnhXCUI8A5yD3w7ElDubv6GNI+FDutjWvWqB4fxXnGAcPmu+SNEWfmSgYVRq4LnL5Nnj5ZSsBePOeXirv9HXg==";
=======
        version = "10.0.1";
        hash = "sha512-wPnoZT9XXBOptQ8UkqHR6ytEJxgv1Os98/dXP/944B3P/fWVdyLN3fDq4EOf+FYR9QAIqdH3tHKHgLJBl16RyA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "runtime.win-x86.Microsoft.NETCore.DotNetAppHost";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-vwi715pWIe1EMVJW85Cp6YLWDDcuSu5XVqNsTu7J6+NpuYkdGxqocI+780SJ3grRRwJ2DARXTCzKQyF2J1ZRDQ==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-wmvYzbEsKYDFAeWBsfJebIAuLtolrkDDToxqO8BW7KEt9zoeqVKeR91uAWcW5kyd6GSc4WpTyU7oXCW8jMx9bA==";
=======
        version = "10.0.1";
        hash = "sha512-lQA5qngftZSocjMXUDwG76A3HIt9PnzZRkBCMDHF4mAWOzvCY1nWq4GrfKNFEohakD3bChDn7SWwcR8/FrGtzA==";
>>>>>>> master
      })
      (fetchNupkg {
        pname = "Microsoft.NETCore.App.Runtime.NativeAOT.win-x86";
<<<<<<< HEAD
        version = "10.0.0";
        hash = "sha512-IC5RonQHDTRAjs4hShcljsrZuaIHypR3gb0iF5AT6OWv9ZbspPKs8yEtWTWpkZOp5SDdIujOsYG2872NjLjnGw==";
||||||| 213fed0310e3
        version = "10.0.0-rc.2.25502.107";
        hash = "sha512-2j+ONnDhOIcS75JLL4OGZj4NJnha5si4D8ylnHWsJi5nZ5jGfHnuABpUMOn2T5yaw6vUPyQc6+e1qYWUW7NuQQ==";
=======
        version = "10.0.1";
        hash = "sha512-NwbW1q119szIwzqZSguA9zKTxj9AZHTLtfTct8isPh1oBIDEYlPd+FBAM8/Cuc3jvnzL0sMcyHjW68y1xhC0uQ==";
>>>>>>> master
      })
    ];
  };

in
rec {
<<<<<<< HEAD
  release_10_0 = "10.0.0";
||||||| 213fed0310e3
  release_10_0 = "10.0.0-rc.2";
=======
  release_10_0 = "10.0.1";
>>>>>>> master

  aspnetcore_10_0 = buildAspNetCore {
<<<<<<< HEAD
    version = "10.0.0";
||||||| 213fed0310e3
    version = "10.0.0-rc.2.25502.107";
=======
    version = "10.0.1";
>>>>>>> master
    srcs = {
      linux-arm = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-linux-arm.tar.gz";
        hash = "sha512-UIO5wgVxY5zJNZDoY8Ac9rN5/EyxKdHrdJh4jnGUsNohs4oYTkmt9R3sgBPEVxr6pnEeNPs85jmc7U1yzpcsIw==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0-rc.2.25502.107/aspnetcore-runtime-10.0.0-rc.2.25502.107-linux-arm.tar.gz";
        hash = "sha512-RXOXwcFuMTHcNkKezwQUwnjnbnqwVhNill3BUplT8zQBzMnivYJApuPQlxG5k0Ye6h+JI5AeE4qeGyZ7hCMclg==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-linux-arm.tar.gz";
        hash = "sha512-5lU5pH1swNiqvAMFAbcCWL1Ht9zIcfsPsr5KK1qE18EdntOXddCIAsclb7K8e5h4LaY0LHhXr2CcESAJKNXq9g==";
>>>>>>> master
      };
      linux-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-linux-arm64.tar.gz";
        hash = "sha512-DtAi96eivwZgstTNy5SlREubns6H8ipgogKRN2MP2ROFxhoZsTAegb7zY7W4kJJNU6fIJOWL1O3TJ3I6pyxvtQ==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0-rc.2.25502.107/aspnetcore-runtime-10.0.0-rc.2.25502.107-linux-arm64.tar.gz";
        hash = "sha512-4HXBe9WZLPaqsfi1mGRaCXa6Qfz8dBTn9z8l/pZk2bFF1KYa31DCF0GPJJUTE3GvBejfTaeFjHKsSxOmeRB2EA==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-linux-arm64.tar.gz";
        hash = "sha512-hfK4U7yVBv/RoIbSjfKI6bC/8+yhKQCtjvRZ8uydU3+TQVZN16bf7mU0VVUJr1FVTGucsWh04x7xQcvPbszM8g==";
>>>>>>> master
      };
      linux-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-linux-x64.tar.gz";
        hash = "sha512-czFM9IFfVR7m+YAnODZWjGYCD95+h7f+J/giS7bs5ednvyqA5CvFqtOD3LOMgj9LKyXQ//y7D71z+oLyDmbozw==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0-rc.2.25502.107/aspnetcore-runtime-10.0.0-rc.2.25502.107-linux-x64.tar.gz";
        hash = "sha512-FAO6wy9LQ3DWZ4QaOkyr0R4zDrClSRiUSR08QYxf2c53ndYpgAlHqx6gGOWnJg/O538gLij6jBiW16AXfQOMfw==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-linux-x64.tar.gz";
        hash = "sha512-zQEXTFKi/4EH0k62HBjbRGOeSnZLElp1OCUdJq0+RFf1JVGBwE5umqHTpKCE3qAHFSpEd3tS47Q84Pro8iGoMQ==";
>>>>>>> master
      };
      linux-musl-arm = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-linux-musl-arm.tar.gz";
        hash = "sha512-fBYkDoRVRPx5OHfjmYcWujkACEbUUJNwZfw/Rn35pv9Ugs6/4odXtx4eUZq/kkWepIFvVUlXf6mk4ljKPKfkAQ==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0-rc.2.25502.107/aspnetcore-runtime-10.0.0-rc.2.25502.107-linux-musl-arm.tar.gz";
        hash = "sha512-ahZGywTD2ZEUT2FfFsyszICvtaBX+dlmIPmr24qvkXC3MZOWRVsRk6b793U4UWurEVVF6ZrpWY5qXY7FD2ZeXQ==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-linux-musl-arm.tar.gz";
        hash = "sha512-bzraRU+hDVsYZW0JuvKP+B0+D/fxNwO2PwN7DUFoz4YwC88v8qINiW/dUZuD0+owifNLV4lIbF5dWmFb5h0W/g==";
>>>>>>> master
      };
      linux-musl-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-linux-musl-arm64.tar.gz";
        hash = "sha512-oKAL1Ru7E9QO3ecHbffwTlhtkurZedieiIF32NgW5nVqyA2UkddOikztceQlx1MOntjZROwN+xi/JczCHSrFAg==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0-rc.2.25502.107/aspnetcore-runtime-10.0.0-rc.2.25502.107-linux-musl-arm64.tar.gz";
        hash = "sha512-ax3VcSTsMrKWKOzfrBMjf/pO3y+fKwT+w75qfFgRNmDgHlSr4qR50AJs6GX13lPFmM0yhL3crByBjo35vx0XCA==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-linux-musl-arm64.tar.gz";
        hash = "sha512-CepnOa7tOFog8r0wJn+lMLAoFOQPQ6UJYww00smjIZq3S4yDcynVCJaUP7RJZw9Ak+/gm0ug+HbMzj7b0StHsQ==";
>>>>>>> master
      };
      linux-musl-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-linux-musl-x64.tar.gz";
        hash = "sha512-Txi3/RJiEjZLfKaMo/Pw1jNYzIcXL9cv533iVniNk0CBRCHBYwMXIkjwxyl7m5a8BpQXXEHveM4iG3vQLPlMpA==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0-rc.2.25502.107/aspnetcore-runtime-10.0.0-rc.2.25502.107-linux-musl-x64.tar.gz";
        hash = "sha512-vrVCuMUmveGoriyyKGwJlmpS00KJomVpjDJgAQCoNzq4hYqEVBqEP43xl5YEhURcaAk+sDvctiwjmOKe146HUQ==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-linux-musl-x64.tar.gz";
        hash = "sha512-74S4vPsyOhGsxX5UBo4f99qkAL1ciuuJxl+xP7KtnjAphmR0lVYaDE/aXrTAg2pn5eflkdWGYfIM1t3/l9bUyQ==";
>>>>>>> master
      };
      osx-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-osx-arm64.tar.gz";
        hash = "sha512-T7Fx/53sxhuazoI6HBZcUKbTz3URjqxCpCKQmzd0apz9CaKAF9cBwpMZ3kKnWnds9jhGugTV4PfalkuoHFMiTQ==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0-rc.2.25502.107/aspnetcore-runtime-10.0.0-rc.2.25502.107-osx-arm64.tar.gz";
        hash = "sha512-nydHh5ePwdcun6BZDdQY0yIDUqODqQmFTQvbgqfDIxZU4hSW7661kCiS3Mo/JvEz7B3yY38+hXj7mcjClQkBXA==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-osx-arm64.tar.gz";
        hash = "sha512-G51+yS76MVGfcX5YbakVASYqTLvgR4b7FnLGPaDymuatWS6jLVFoh7wAQlOcsAz0ZNDjT3D1wsRK+I1tY3menA==";
>>>>>>> master
      };
      osx-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0/aspnetcore-runtime-10.0.0-osx-x64.tar.gz";
        hash = "sha512-NnZGSVgijMmjjZbacxfJWVM7cyV1LxDBo7JhZg+geHmc451AQVOsweRgo4C0ImPSs2nOUbO15p5+GdhBTcTE9w==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.0-rc.2.25502.107/aspnetcore-runtime-10.0.0-rc.2.25502.107-osx-x64.tar.gz";
        hash = "sha512-lVKMR713KOs6wRK6VD64X18QEgU+WGxT+VKbo/7phAmA29Hl9+0xTaTh2gXQrz/HsXVKpx3Bq4s+53/mO8gVCA==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/10.0.1/aspnetcore-runtime-10.0.1-osx-x64.tar.gz";
        hash = "sha512-KqfrNjlgr72ZRQe0T7z0Y4MDgJIXAlOkM1OY03qmCkB9Qvs3sBj00Er4fqJwhagh4SNKPs4y9P0AnL85RijrLg==";
>>>>>>> master
      };
    };
  };

  runtime_10_0 = buildNetRuntime {
<<<<<<< HEAD
    version = "10.0.0";
||||||| 213fed0310e3
    version = "10.0.0-rc.2.25502.107";
=======
    version = "10.0.1";
>>>>>>> master
    srcs = {
      linux-arm = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-linux-arm.tar.gz";
        hash = "sha512-QwFryp+QAr6Ks0cwEkL+8Dt7vQDtNPt7mmkIcZuD0PLol77jlUAmzCcUuCFF5kpJv/OG9MBK57YCQUNNyH4fhA==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0-rc.2.25502.107/dotnet-runtime-10.0.0-rc.2.25502.107-linux-arm.tar.gz";
        hash = "sha512-DJXv15WufpXB20TlEJvX/BdIelELi+i+HwB5uAZmxa+qPtqAN0gWA9Cqz/0l9pH7z6OItLlXc0aQHGMffgN6EQ==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-linux-arm.tar.gz";
        hash = "sha512-s6uWHK46WdCkFBFnlUuDr/JbWnTy6Uioo6qYjL3W58XYrLI5WSm26L5uTwEs7Z8YU/d/t6fwDd5VnzAghIJkIQ==";
>>>>>>> master
      };
      linux-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-linux-arm64.tar.gz";
        hash = "sha512-hvK1vLnVbCqjUxTz7tq3FbvCHzPGb1xF/OP3PCKsFwHppEQVoG9wMezof0+4SBqbj6m+bwMAmDGe5W0pWoAV1w==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0-rc.2.25502.107/dotnet-runtime-10.0.0-rc.2.25502.107-linux-arm64.tar.gz";
        hash = "sha512-5Fua/p7gZFDY0mNmJdCiJX5ABdn0RIQ2Xcsxs2K7tq9Q7VqSQq210tlzoyWeRE3CF/reJbqZ36B+wCFd/qwvLw==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-linux-arm64.tar.gz";
        hash = "sha512-ErorzR5LCXdDxCtIoRnHMpPyaYRCKNhd5WV1foG5NmgWkh7o5Z2pgwjzO5CR0xegANVLhy8LSIrbBTwvTRZjYA==";
>>>>>>> master
      };
      linux-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-linux-x64.tar.gz";
        hash = "sha512-CuiWaDRehaPEl3zXLpRIDgVYuupJS//q9pi7W+QAuMp4trWPihAk59Ihy8375oEDcucu22Ec08UATJeS6olAsg==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0-rc.2.25502.107/dotnet-runtime-10.0.0-rc.2.25502.107-linux-x64.tar.gz";
        hash = "sha512-hqcTeMqtJmJuVbT0fLDqEFRK+lqt29DzPZuIsf2fpTJuKsZPnf5BaYS6E8GJNpDP4Ek94D7uAdqGXEtVGT8RwQ==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-linux-x64.tar.gz";
        hash = "sha512-4iTPHpIqrfmG+kc7nr3ndXjoWa/t24xFsMU2ItZJeedyEMsCcTdQ9IJCkfi5NNjagkk3TqLfWWEMR0HDVROZDw==";
>>>>>>> master
      };
      linux-musl-arm = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-linux-musl-arm.tar.gz";
        hash = "sha512-2/5QzZLDXLS43yllErFZzeZxOLnzJT7x8T3EbxgYWepLl1OVmpb5pPCFHAFwvvoxilD74+KBk9GFwViqgFndJg==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0-rc.2.25502.107/dotnet-runtime-10.0.0-rc.2.25502.107-linux-musl-arm.tar.gz";
        hash = "sha512-ozCEpKgdIi8lrnOWZHGOXGdo69vWKsFM0eD1cOfF5MWB9ou67WUyHE4G3Jp9hf9gwNWf1VW++RqRTzM+o5Nt3Q==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-linux-musl-arm.tar.gz";
        hash = "sha512-tspt7EwPr0GR0/VWVT4dVbKskeDRNusxmf67Wz9oRl74q9RVSsomy0Gg3r5cCYyQJDglpZTFobQEyjiqT9XNGw==";
>>>>>>> master
      };
      linux-musl-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-linux-musl-arm64.tar.gz";
        hash = "sha512-QqCC260s+X6+BK1wtULTug5/3ldtE3zGNxRkH64tzOT77+VqEnccSfyuQY1Kc+BHnEIPODEWn8mRXBmcoyykAA==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0-rc.2.25502.107/dotnet-runtime-10.0.0-rc.2.25502.107-linux-musl-arm64.tar.gz";
        hash = "sha512-I81zfdNIDK/ZBhWiLzbwrK0rpXgNhNDke45jE6SUvYK4fCrROr99kQ26jkTv6zZWgJ1U3MRsIwhmgtYWk3fdBQ==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-linux-musl-arm64.tar.gz";
        hash = "sha512-IeE5b1EmdWm3TAO71BHEPOjpBG6iFqOKmMbtOfgPm2frs95fIUhn6obnRtiRBb4N4U38JLqMCb8eokLsL4RS+w==";
>>>>>>> master
      };
      linux-musl-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-linux-musl-x64.tar.gz";
        hash = "sha512-ZNCAY9izOVzxAQw1LwM94sPN56VAkhnpgSuecFP15+Fp2IyIaQJUw5/qch2agy3NPHTdmv8GRjB4RFdUvNnkMg==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0-rc.2.25502.107/dotnet-runtime-10.0.0-rc.2.25502.107-linux-musl-x64.tar.gz";
        hash = "sha512-eplb4vU0ro3ZzuzXq7q6WyJ5ujbdkAcUHx7dbfQSFK4WNrLIxaqtYCoStN69o+oVzocWljHoiGiy7DiHBNnIxg==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-linux-musl-x64.tar.gz";
        hash = "sha512-J5ZqJ01yzHu0cuWLzyOPee+g14LB9sPpmsri91almDbZpne2BIy7yFjQbeoym4ZiAWd786M4AXseC4/sOCtY1Q==";
>>>>>>> master
      };
      osx-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-osx-arm64.tar.gz";
        hash = "sha512-r44gDjHbURrr5QygLR/GNNe32HaZQP0E9fv5mZQW9Iqf/uWFjpGEdRVSKYTGeBXOYYmh/RH1VAsT8r1sf+bDew==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0-rc.2.25502.107/dotnet-runtime-10.0.0-rc.2.25502.107-osx-arm64.tar.gz";
        hash = "sha512-e4Z16OTkJMXqpnUVO32Tx43tSu34R7EWt6d8/itpKoxi6Lwegqhg+FAG/ZBHN5GmHtN9Cep+m4SMcmT8ma0mMg==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-osx-arm64.tar.gz";
        hash = "sha512-73SiKCmEApnGEdQwmNXlz8wfhlWvB3J/Doyz77xazaQP+r2QvhM6Lci8PpDPxh/C077rPUz7mHdZ3RSGPAcBIA==";
>>>>>>> master
      };
      osx-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0/dotnet-runtime-10.0.0-osx-x64.tar.gz";
        hash = "sha512-vAgFlrbpLQdbQ/WQknazbb3Nrjr6eUE/c1RVQLeaflpAOzdRqXYlpOBvEKLhZuGhBZgHbP47PNbkiPWS7hrF+Q==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.0-rc.2.25502.107/dotnet-runtime-10.0.0-rc.2.25502.107-osx-x64.tar.gz";
        hash = "sha512-gEKnCKZlrfDgSDftoUM/zKBzycAIYZbdHPYMMQyBjs0sJXU+HoEHfJv7KvNkgxj8fRABfXnJG0j0KcE/vfeTHA==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Runtime/10.0.1/dotnet-runtime-10.0.1-osx-x64.tar.gz";
        hash = "sha512-AMYHFNs3LE9X9ABcl37/3gjVFyh3R/mSdpagXJLap6oVfehAFjKm1cnHydrEBu1woneMESwuPNnaSQV0d3sfyQ==";
>>>>>>> master
      };
    };
  };

  sdk_10_0_1xx = buildNetSdk {
<<<<<<< HEAD
    version = "10.0.100";
||||||| 213fed0310e3
    version = "10.0.100-rc.2.25502.107";
=======
    version = "10.0.101";
>>>>>>> master
    srcs = {
      linux-arm = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-linux-arm.tar.gz";
        hash = "sha512-RfLX/QVnCloU+kgIieRZIHgid1ddug2kTCWZl9BZ1kBwtArHqunww6MHbZ/tW3h4VKir3C39tHg7RJwFwcm0nA==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100-rc.2.25502.107/dotnet-sdk-10.0.100-rc.2.25502.107-linux-arm.tar.gz";
        hash = "sha512-eiIncogEsBXQse0KJrkAQrbqcR6nxEMAsA0reWwBSalfX78wPMzBXQVKI44Cm9ANetxzSvA2FLAGv8eCk8moOQ==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-linux-arm.tar.gz";
        hash = "sha512-XlIsgA/1Xm9snfMOOJL+F/r4uiL4RGP+N1wmC2JT+eFbVzTv6OEvqMJYGLAhAqfvCpXIVuHImI7nrAamL5awNg==";
>>>>>>> master
      };
      linux-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-linux-arm64.tar.gz";
        hash = "sha512-JPwrEFq4SEw0IT71esTmo2plkyQfDrxs8KQOwvX+otdt6FxLh7KlOBTRlOMuwSiN1QU81vUnaNec0KyUjL+E6g==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100-rc.2.25502.107/dotnet-sdk-10.0.100-rc.2.25502.107-linux-arm64.tar.gz";
        hash = "sha512-pEEEWfBX9/h0DLH31pZSe7pIuoZLUZ51e4jIYitPwxK6ZFN3Rjdw9y0aslLd6Y8Hi+3wzVmv3gxRm4I67ijmww==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-linux-arm64.tar.gz";
        hash = "sha512-kjj40aytONFDMktAmcqh2BD7V89ZnyceiHLh9c1niqU9ToUEram41Hhp9FSi96lpkAahfKDXUPCaE91BdEhkHA==";
>>>>>>> master
      };
      linux-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-linux-x64.tar.gz";
        hash = "sha512-9426wwya8iMNZ/9cIk3jpdv2P4p40cIGWU3tuA5pCdLMip2GXVEFxywv0qomb8DGx33trGBAjLzPJysRa9EbBw==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100-rc.2.25502.107/dotnet-sdk-10.0.100-rc.2.25502.107-linux-x64.tar.gz";
        hash = "sha512-EgD/M9fCqDRJlZDgX0bAZdD33B91IPNUA7XU/B+wC937fEquIwKA6NxokP5fxcpzjepHiQVmFO0CqE0ehtBo6Q==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-linux-x64.tar.gz";
        hash = "sha512-BENgJFXTCvUcgZ14Bem0VVAQHDcYrLs+xfmR5z0Y55sY+1vHzfd7wwiTapYnUXayOlbpYTPn3oOuYMoiQLxgLw==";
>>>>>>> master
      };
      linux-musl-arm = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-linux-musl-arm.tar.gz";
        hash = "sha512-WlQ3WEUQGcKcncMiDDCVvlI0qa3G/l3Mw2eIaxYKkHstaoG+j9PA9Sfp7IMnA7JUbeyBqN8oAtn271YUCC4TsA==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100-rc.2.25502.107/dotnet-sdk-10.0.100-rc.2.25502.107-linux-musl-arm.tar.gz";
        hash = "sha512-tNgUQhCt+jwefr9wmNgUP/IjN0wjHjqcO5UjBg+P4CpaAkBJVEjRl95sm5fKta954Ofhnl8p7FSp31WvFeUQ5A==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-linux-musl-arm.tar.gz";
        hash = "sha512-IZQSpeOp8Za4E2hBF8fQPKpWb/kY91fJ8oMtfYddgCgdZnNqpEJxq0kr2Jyw2shIYMUTCmnePWXsQJxf4pBS3g==";
>>>>>>> master
      };
      linux-musl-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-linux-musl-arm64.tar.gz";
        hash = "sha512-X7lEIc5Ylvs2tkvQ+XWoPRk4ZBIF2J9EciyOpEoD+1hE2f7m1y+SrFY9EEC3buPx5j4vc4RntDKdLqvtDFsEyg==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100-rc.2.25502.107/dotnet-sdk-10.0.100-rc.2.25502.107-linux-musl-arm64.tar.gz";
        hash = "sha512-73pA0+ULVFYs+gUrCxXOTE0we0dYdAHtSgshPKEstFX6YO2hR1pAgBtVblMP5GF3Cjf4EPskZ9MLVOkmKvzNDQ==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-linux-musl-arm64.tar.gz";
        hash = "sha512-FO8ujIewxxkukNSlS/RNexykk27vBxjEeSgZbk/oEhb6Www42ZDgP6KssNiH/B17gk3kla+pwZVieLbcRIex7g==";
>>>>>>> master
      };
      linux-musl-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-linux-musl-x64.tar.gz";
        hash = "sha512-L7fdybIypn9pJiuL7rtfoiPahskxTwdO15sVGnu9CxtcNr5UgNNj2CcJrmn9kPempFHvaAJuBAZYFDTtKIsg7A==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100-rc.2.25502.107/dotnet-sdk-10.0.100-rc.2.25502.107-linux-musl-x64.tar.gz";
        hash = "sha512-oxvqxFB36unAENrLA/UvZ82A9wvzrssCy0pdAN9HfGDSKeOU6cWwknHyMRlyEW8cKgmrwEBARSB0giys1mhLdQ==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-linux-musl-x64.tar.gz";
        hash = "sha512-o7Zp6AY3bCncNaHty+9BD0kjOjWvnizYMYBF6QhL/SnzuvgRtoonYLchJqGQNSzGsQdj887Nq7O733vRtd/SGw==";
>>>>>>> master
      };
      osx-arm64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-osx-arm64.tar.gz";
        hash = "sha512-DunHdPnGNgGERhm2fWyoKdcPomuZSbgI6AE4DDXtsS5MlBi6+OLvi6HcbcfTB9v1gw+w9Pl2ZgMqORxcCX7mBw==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100-rc.2.25502.107/dotnet-sdk-10.0.100-rc.2.25502.107-osx-arm64.tar.gz";
        hash = "sha512-4qjERriGb97WCmbhT4kW5bbUcnBxPT+b/dUIvo8B0D+EoldgQob3Oq47T8t9KJVk3Rvc6E4HoDz6HkO2KuXdvw==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-osx-arm64.tar.gz";
        hash = "sha512-EVB87W9S86k9oPEjrl6JrZVc88+rybPvGXxoqZvKW0XnmoJc+TymqwPtH4t7F4Mwi701+rnxFyEJGzUVkm8r8w==";
>>>>>>> master
      };
      osx-x64 = {
<<<<<<< HEAD
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100/dotnet-sdk-10.0.100-osx-x64.tar.gz";
        hash = "sha512-WVw8ZhpwWiVvUuA+Ou64Z1Otb5qj1Z9IcwTNu7dEo59OP6ZEWmDN7WvHjhL1HVLtWhg+pwoFYLlr7WH7g5WPgQ==";
||||||| 213fed0310e3
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.100-rc.2.25502.107/dotnet-sdk-10.0.100-rc.2.25502.107-osx-x64.tar.gz";
        hash = "sha512-kZVpQU9HhCxahNlq+WXPg41YgwvOW4f2dHez9N8OYL7O3Rz7PPUeBKZLl4PDlE3yjuTe4uSRi9TIFFICVMo58g==";
=======
        url = "https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.101/dotnet-sdk-10.0.101-osx-x64.tar.gz";
        hash = "sha512-ndwNd2X1GC6psKyI3NAr5a9N/ExHs0BsD+efy8bYA/ZV1xgrOnDHoMgXbcAsaVZXFZOUPw2GMWW/enuHGsx5gQ==";
>>>>>>> master
      };
    };
    inherit commonPackages hostPackages targetPackages;
    runtime = runtime_10_0;
    aspnetcore = aspnetcore_10_0;
  };

  sdk = sdk_10_0;

  sdk_10_0 = sdk_10_0_1xx;
}
