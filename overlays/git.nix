self: super:
let
  version = "2.35.1";
  pname = "git";
in {
  git = super.git.overrideAttrs (old: {
    inherit version;
    inherit pname;
  });
}
