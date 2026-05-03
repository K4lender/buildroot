T3 Gemstone O1 (AM67A) Buildroot Support
========================================

How to build
============

$ make t3_gem_o1_defconfig
$ make

How to write the SD card
========================

Once the build process is finished you will have an image
called "sdcard.img" in the output/images/ directory.

Copy the bootable "sdcard.img" onto an SD card with "dd":

  $ sudo dd if=output/images/sdcard.img of=/dev/sdX bs=1M && sync

Where /dev/sdX is the device node of your SD card.

If you would like use tool with gui, you can use gem-imager.
- Gem-imager: https://github.com/t3gemstone/gem-imager

Booting the board
=================

Insert the SD card into the T3 Gemstone O1 board.
Connect the UART cable to get terminal access.
Power on the board. The system should boot into Buildroot.

Repositories Used
=================
- U-Boot: https://github.com/t3gemstone/u-boot.git (branch: v2025.04-rc3-t3-gem-o1)
- Linux Kernel: https://github.com/t3gemstone/linux.git (branch: v6.12.24-ti-arm64-r43-t3-gem-o1)
