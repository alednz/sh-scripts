mount -L hd4tb /hd_ext
mount -L hd_sync /hd_sync
sysctl net.ipv4.ip_forward=1
systemctl start syncthing@alessandro
