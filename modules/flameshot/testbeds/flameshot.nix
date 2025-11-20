{ lib, ... }:
{
  stylix.testbed.ui.command.text = "flameshot gui";

  home-manager.sharedModules = lib.singleton {
    services.flameshot.enable = true;
  };
}
