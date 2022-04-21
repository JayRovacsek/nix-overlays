self: super:
let
  version = "3.0.2";
  pname = "dockutil";
in {
  dockutil = super.dockutil.overrideAttrs (old: {
    inherit version;
    inherit pname;

    src = super.fetchurl {
      url =
        "https://github.com/kcrawford/dockutil/releases/download/${version}/dockutil-${version}.pkg";
      sha256 =
        "175137ea747e83ed221d60b18b712b256ed31531534cde84f679487d337668fd";
    };

    nativeBuildInputs = [ super.pkgs.libarchive super.pkgs.p7zip ];

    unpackPhase = ''
      7z x $src
      bsdtar -xf Payload~
    '';

    installPhase = ''
      runHook preInstall
      runHook preInstall
      mkdir -p $out/bin
      mkdir -p $out/bin
      install -Dm755 scripts/dockutil -t $out/bin
      mkdir -p $out/usr/local/bin
      install -Dm755 usr/local/bin/dockutil -t $out/usr/local/bin
      ln -rs $out/usr/local/bin/dockutil $out/bin/dockutil
      runHook postInstall
      runHook postInstall
    '';
  });
}
