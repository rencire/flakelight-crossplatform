{
  description = "A commonos module for flakelight";
  inputs.flakelight.url = "github:accelbread/flakelight";

  outputs =
    { flakelight, ... }:
    flakelight ./. {
      imports = [ flakelight.flakelightModules.flakelightModule ];
      flakelightModule = ./flakelight-crossplatform.nix;
    };
}
