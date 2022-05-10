self: super:
let
  version = "2.35.1";
  pname = "git";
in {
  git = super.dockutil.overrideAttrs (old: {
    inherit version;
    inherit pname;
  });
}
