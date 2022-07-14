self: super:
let version = "0.16.0-beta6";
in {
  headscale = super.headscale.overrideAttrs (old: {
    inherit version;

    src = super.fetchFromGitHub {
      owner = "juanfont";
      repo = "headscale";
      rev = "v${version}";
      sha256 = "sha256-y9DGQJps/Hah/gVehOE47eIgYZTz/vBdB8RRBA/mXpM=";
    };

    vendorSha256 = "sha256-T6rH+aqofFmCPxDfoA5xd3kNUJeZkT4GRyuFEnenps8=";
  });
}
