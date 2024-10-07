{ pkgs, ... }:

{
  programs.rofi.theme = {
    "*" = {
      background-color = mkLiteral "#FF0000";
    };
  };
}