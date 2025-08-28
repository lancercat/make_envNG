ln -sf /usr/share/zoneinfo/Europe/Stockholm /etc/localtime
hwclock --systohc
cat locale.gen  > /etc/locale.gen
cat pacman.conf > /etc/pacman.conf
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
cat hostname > /etc/hostname
mkinitcpio -P
pacman -S - < all.pac

grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB --removable
grub-mkconfig -o /boot/grub/grub.cfg


systemctl enable sddm
systemctl enable NetworkManager


useradd lasercat
passwd lasercat
mkdir /home/lasercat
chown lasercat /home/lasercat


