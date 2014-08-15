# lxccu

<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=me%40oskarholowaty%2ecom&lc=AT&item_name=LXCCU%20Github&currency_code=EUR&bn=PP%2dDonationsBF%3abtn_donate_SM%2egif%3aNonHosted"><img style="padding:0;" width=74 height=21  src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif" alt="Donate!" / border="0"></a>


## install

### raspberry pi

#### raspbian / raspbian-ua-netinst

install the latest kernel with rpi-update
```
#optional
apt-get install rpi-update
```
```
rpi-update
reboot
```

install lxccu
```
wget -nv -O- http://www.lxccu.com/setup.sh | bash -
```


### cubietruck

Use igors image (min version 1.9)
http://www.igorpecovnik.com/2013/12/24/cubietruck-debian-wheezy-sd-card-image/

install lxccu
```
wget -nv -O- http://www.lxccu.com/setup.sh | bash -
```

# Usage

After installation -> reboot (lxc autostart)

You can acess via raspberry pi with the command 
```
lxc-console -n lxccu -t 1
```
or enable ssh (homematic webui)
