self: super:
let
  version = "0.16.0-beta6";
  pname = "headscale";
in {
  headscale = super.headscale.overrideAttrs (old: {
    inherit version;
    inherit pname;

    src = super.fetchFromGitHub {
      owner = "juanfont";
      repo = "headscale";
      rev = "v${version}";
      sha256 = "sha256-y9DGQJps/Hah/gVehOE47eIgYZTz/vBdB8RRBA/mXpM=";
    };

    vendorSha256 = "";
  });
}
