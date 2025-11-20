{ lib, pkgs, ... }:
{
  stylix.testbed.ui.command = {
    text = lib.getExe pkgs.gdu;
    useTerminal = true;
  };

  home-manager.sharedModules = lib.singleton {
    home.packages = [ pkgs.gdu ];
  };
}
