{ mkTarget, ... }:
mkTarget {
  name = "flameshot";
  humanName = "Flameshot";
  configElements = [
    (
      { colors }:
      {
        services.flameshot.settings.General = with colors.withHashtag; {
          userColors = "picker, ${base00}, ${base08}, ${base09}, ${base0A}, ${base0B}, ${base0C}, ${base0D}, ${base0E}, ${base0F}";
          uiColor = base0D;
          contrastUiColor = base03;
          drawColor = base05;
        };
      }
    )
    (
      { fonts }:
      {
        services.flameshot.settings.General = {
          drawFontSize = fonts.sizes.applications;
          fontFamily = fonts.sansSerif.name;
        };
      }
    )
  ];
}
