#!/bin/sh
# This script is to reinitialize boot loader and mkinicpio, execute normally after a kernel update
# Target environment: Arch Linux + grub2 + LUKS + external headers
umount /dev/sdb2
mount /dev/sdb2 /boot/efi
echo ==================================================
ls -l --color=auto /boot/efi
echo ==================================================
pause
grub-mkconfig -o /boot/grub/grub.cfg
mkinitcpio -p linux
