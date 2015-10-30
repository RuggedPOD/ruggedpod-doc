# Active i2c on raspeberry #

## Boot variables ##

### Install package ###

sudo apt-get install python-smbus
sudo apt-get install i2c-tools

### Add modules to /etc/modules ###

i2c-bcm2708 
i2c-dev

### Change /boot/config.txt ###

dtparam=i2c1=on
dtparam=i2c_arm=on

## Tests ##

sudo i2cdetect -y 1
