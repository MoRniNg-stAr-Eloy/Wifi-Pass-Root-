clear
echo
echo
echo -e '\033[1;34m'   Restoring The Original Wifi Files. Please Wait....
sleep 3
cd /data/misc/wifi/
if [ -e /data/misc/wifi/wpa_supplicant.conf ]; then
chmod 777 wpa_supplicant.conf
rm -rf wpa_supplicant.conf
sleep 1
touch wpa_supplicant.conf
else
touch wpa_supplicant.conf
fi
cd /sdcard/wifi/
cat "wifi.bak" >> /data/misc/wifi/wpa_supplicant.conf
cd /data/misc/wifi/
chmod 660 wpa_supplicant.conf
echo
echo
sleep 2
echo -e "Restore Completed....."
cd /sdcard/wifi/
rm -rf wifi.bak
echo -e '\033[1;31m' Your System is Going to Restart in 5 sec....
sleep 1
echo -e '\033[1;31m' 5
sleep 1
echo -e '\033[1;31m' 4
sleep 1
echo -e '\033[1;31m' 3
sleep 1
echo -e '\033[1;31m' 2
sleep 1
echo -e '\033[1;31m' 1
sleep 1
echo -e '\033[1;31m' Boom
sleep 1
restart