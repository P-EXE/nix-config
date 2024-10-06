{ config, ... }:

{
  programs.kitty.enable = true;

  programs.kitty.settings = with config.colorScheme.palette; {
    font_family = "JetBrainsMono Nerd Font";
    font_size = 9;
    cursor_shape = "beam";
    cursor_shape_unfocused = "unchanged";
    confirm_os_window_close = 0;
   
    window_padding_width = 8;
    foreground = "#${base05}";
    background = "#${base00}";
  };
}
