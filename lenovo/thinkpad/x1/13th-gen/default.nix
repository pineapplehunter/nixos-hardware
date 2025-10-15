{ lib, ... }:

{
  imports = [
    ../.
    ../../../../common/pc/ssd
    ../../../../common/cpu/intel/lunar-lake
  ];

  hardware.trackpoint.device = "TPPS/2 Synaptics TrackPoint";

  services = {
    fprintd.enable = lib.mkDefault true;
    fwupd.enable = lib.mkDefault true;
    thermald.enable = lib.mkDefault true;
  };
}
