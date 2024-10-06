{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "Super";
  };

  wayland.windowManager.hyprland.settings.input = {
    repeat_rate = 25;
    repeat_delay = 300;
  };

  wayland.windowManager.hyprland.settings.bind = [
    "$mod, Space, exec, rofi -show drun -show-icons"
    "$mod, Q, killactive"
    "$mod, Delete, exit"
    
    "$mod, Return, fullscreen"
    "$mod, W, togglefloating"

    "$mod, Left, movefocus, l"
    "$mod, Right, movefocus, r"
    "$mod, Up, movefocus, u"
    "$mod, Down, movefocus, d"

    "$mod Shift, Left, swapwindow, l"
    "$mod Shift, Right, swapwindow, r"
    "$mod Shift, Up, swapwindow, u"
    "$mod Shift, Down, swapwindow, d"
    
    "$mod, 1, workspace, 1"
    "$mod, 2, workspace, 2"
    "$mod, 3, workspace, 3"
    "$mod, 4, workspace, 4"
    "$mod, 5, workspace, 5"
    "$mod, 6, workspace, 6"
    "$mod, 7, workspace, 7"
    "$mod, 8, workspace, 8"
    "$mod, 9, workspace, 9"
    "$mod, 0, workspace, 10"

    "$mod+Shift, 1, movetoworkspace, 1"
    "$mod+Shift, 2, movetoworkspace, 2"
    "$mod+Shift, 3, movetoworkspace, 3"
    "$mod+Shift, 4, movetoworkspace, 4"
    "$mod+Shift, 5, movetoworkspace, 5"
    "$mod+Shift, 6, movetoworkspace, 6"
    "$mod+Shift, 7, movetoworkspace, 7"
    "$mod+Shift, 8, movetoworkspace, 8"
    "$mod+Shift, 9, movetoworkspace, 9"
    "$mod+Shift, 0, movetoworkspace, 10"

 # "$mod Tab, Left, workspace, r-1"
 # "$mod Tab, Right, workspace, r+1"
  ];
  
  wayland.windowManager.hyprland.settings.binde = [
    "$mod Control, Left, resizeactive, -10 0"
    "$mod Control, Right, resizeactive, 10 0"
    "$mod Control, Up, resizeactive, 0 -10"
    "$mod Control, Down, resizeactive, 0 10"
  ];

  wayland.windowManager.hyprland.settings.bindm = [
    "$mod, mouse:272, movewindow"
    "$mod, mouse:273, resizewindow"
  ];
}
