#!/bin/sh

apt -y install binutils
ar x odoo_14.0.0+dfsg.2-1_all.deb
unzstd control.tar.zst
unzstd data.tar.zst
xz control.tar
xz data.tar
rm odoo_14.0.0+dfsg.2-1_all.deb
ar cr odoo_14.0.0+dfsg.2-1_all.deb debian-binary control.tar.xz data.tar.xz
printf '#!/bin/sh\nexit 0' > /usr/sbin/policy-rc.d