# lxccu

## install

### raspberry pi

#### raspbian

install lxc enabled kernel
```
apt-get update && apt-get install linux-image-rpi-rpfv
cp /boot/kernel.img /boot/kernel.img.orig
cp /vmlinuz /boot/kernel.img
reboot
```

install lxccu
```
wget -nv -O- https://www.biglan.at/oskar/lxccu/setup.sh | sudo bash -
```


### cubietruck

Use igors image (min version 1.9)
http://www.igorpecovnik.com/2013/12/24/cubietruck-debian-wheezy-sd-card-image/

install lxccu
```
wget -nv -O- https://www.biglan.at/oskar/lxccu/setup.sh | sudo bash -
```
