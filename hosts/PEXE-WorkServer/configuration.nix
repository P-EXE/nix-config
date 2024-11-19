{ config, pkgs, lib, inputs, ... }:

{
  imports = [
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
  ];

  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
  };
 
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Enable networking
  networking.hostName = "PEXE-WorkServer";
  networking.networkmanager.enable = true;

  # Enable USB
  services.udisks2.enable = true;

  # Enable bluetooth
  #hardware.bluetooth.enable = true;
  #hardware.bluetooth.powerOnBoot = true;
  #services.blueman.enable = true;

  # Enable CUPS printing
  #services.printing.enable = true;

  # Enable sound with pipewire.
  #hardware.pulseaudio = { 
  #  enable = false;
  #  support32Bit = true;
  #};
  #security.rtkit.enable = true;
  #services.pipewire = {
  #  enable = true;
  #  alsa.enable = true;
  #  alsa.support32Bit = true;
  #  pulse.enable = true;
  #  jack.enable = true;
  #};

  # Set your time zone.
  time.timeZone = "Europe/Vienna";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_AT.UTF-8";
    LC_IDENTIFICATION = "de_AT.UTF-8";
    LC_MEASUREMENT = "de_AT.UTF-8";
    LC_MONETARY = "de_AT.UTF-8";
    LC_NAME = "de_AT.UTF-8";
    LC_NUMERIC = "de_AT.UTF-8";
    LC_PAPER = "de_AT.UTF-8";
    LC_TELEPHONE = "de_AT.UTF-8";
    LC_TIME = "de_AT.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  #services.xserver.enable = true;

  # Enable Ozone for electron apps
  #environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.server = {
    isNormalUser = true;
    description = "Server";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  # Home manager
  home-manager = {
    extraSpecialArgs = {
      inherit inputs;
    };
    users = {
      "server" = import ../../homes/server/home.nix;
    };
  };

  # Enable elevation prompts
  #security.polkit = { 
  #  enable = true;
  #  #package = with pkgs; kdePackages.polkit-kde-agent-1;
  #};

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Packages installed in system profile
  environment.systemPackages = with pkgs; [
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?

}
