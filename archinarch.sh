
$DISK=/dev/sdg
mount ${DISK}2 /mnt/

mount ${DISK}1 /mnt/boot --mkdir

# as sometimes they have uid 1000 gid 1000
chown root /mnt
chown root /mnt/boot
chgrp root /mnt
chgrp root /mnt/boot


pacstrap -K /mnt base linux linux-firmware vim

genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt


ln -sf /usr/share/zoneinfo/Europe/Stockholm /etc/localtime
vim /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
echo TESTMEOW > /etc/hostname
mkinitcpio -P

vim /etc/pacman.conf
# https://gitlab.archlinux.org/archlinux/packaging/packages/arch-install-scripts/-/issues/3

pacman -Syu sudo pycharm-community-edition plasma-meta python-paramiko python-lmdb python-numba python-opencv python-pillow python-pip python-pyqtgraph python-pytorch-opt-cuda python-regex python-scikit-learn python-scipy python-torchvision-cuda python-tqdm python-xmltodict make gcc cmake unzip grub vim plasma-meta efivar

grub-install --target=x86_64-efi --efi-directory=/boot –bootloader-id=GRUB –removable

grub-mkconfig -o /boot/grub/grub.cfg

useradd lasercat
passwd lasercat
mkdir /home/lasercat
chown lasercat /home/lasercat

 
