{ pkgs, ... }:

{

  home.packages = with pkgs; [
    jetbrains.rider
    dotnetCorePackages.sdk_8_0_1xx
    #dotnetCorePackages.sdk_9_0
    mono
  ];

}