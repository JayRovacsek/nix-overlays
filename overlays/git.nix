self: super:
let version = "2.35.1";
in { git = super.git.overrideAttrs (old: { inherit version; }); }
