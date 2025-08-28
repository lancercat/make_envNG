
pacstrap -K /mnt base linux linux-firmware vim
genfstab -U /mnt >> /mnt/etc/fstab
mkdir /mnt/archinstall
cp * /mnt/archinstall
