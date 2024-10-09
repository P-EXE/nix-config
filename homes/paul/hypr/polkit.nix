{ pkgs, ... }:

{

  security.polkit.enable = true;
  security.polkit.package = with pkgs; kdePackages.polkit-kde-agent-1;

}
