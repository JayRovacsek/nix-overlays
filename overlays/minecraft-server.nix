{ lib }:
self: super:
let versions = lib.importJSON ./minecraft-server/versions.json;
in {
  minecraft-server =
    super.minecraft-server.overrideAttrs (old: { inherit versions; });
}
