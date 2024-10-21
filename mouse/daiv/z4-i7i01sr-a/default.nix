{ lib, pkgs, ... }:
{
  imports = [
    ../../../common/cpu/intel
    ../../../common/pc/laptop
    ../../../common/pc/ssd
  ];

  # Includes the Wi-Fi and Bluetooth firmware for the QCA6390.
  hardware.enableRedistributableFirmware = true;
  # Enable fwupd
  services.fwupd.enable = lib.mkDefault true;
}
