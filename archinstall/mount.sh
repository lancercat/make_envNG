mount ${1} /mnt
chown root /mnt
chgrp root /mnt
mount --mkdir ${2} /mnt/boot
chown root /mnt/boot
chgrp root /mnt/boot
