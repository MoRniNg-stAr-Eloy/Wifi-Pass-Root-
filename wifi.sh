clear
cd /sdcard
rm -rf wifi
sleep 0.5
mkdir wifi
touch wifi.txt
touch device.txt
sleep 1
cd /data/misc/wifi/
chmod 777 wpa_supplicant.conf
echo
cat "wpa_supplicant.conf" > /sdcard/wifi/wifi.txt
echo
chmod 660 wpa_supplicant.conf
cd /sdcard/wifi/
sleep 1
cat "wifi.txt" >> /sdcard/wifi/device.txt
cat "wifi.txt" >> /sdcard/wifi/wifi.bak
sed -i '/^network/d' "/sdcard/wifi/wifi.txt"
sed -i '/^}/d' "/sdcard/wifi/wifi.txt"
sed -i '/id.str/d' "/sdcard/wifi/wifi.txt"
sed -i '/.scan_ssid/d' "/sdcard/wifi/wifi.txt"
sed -i '/.auth_alg/d' "/sdcard/wifi/wifi.txt"
sed -i '/^ctrl_interface/d' "/sdcard/wifi/wifi.txt"
sed -i '/^disable_scan/d' "/sdcard/wifi/wifi.txt"
sed -i '/^driver_param/d' "/sdcard/wifi/wifi.txt"
sed -i '/^update_config/d' "/sdcard/wifi/wifi.txt"
sed -i '/^device_type/d' "/sdcard/wifi/wifi.txt"
sed -i '/^os_version/d' "/sdcard/wifi/wifi.txt"
sed -i '/^config_methods/d' "/sdcard/wifi/wifi.txt"
sed -i '/^p2p_disabled/d' "/sdcard/wifi/wifi.txt"
sed -i '/^p2p_no_group_iface/d' "/sdcard/wifi/wifi.txt"
sed -i '/^tdls_external_control/d' "/sdcard/wifi/wifi.txt"
sed -i '/^wowlan_triggers/d' "/sdcard/wifi/wifi.txt"
sed -i '/^device_name/d' "/sdcard/wifi/wifi.txt"
sed -i '/^manufacturer/d' "/sdcard/wifi/wifi.txt"
sed -i '/^model_name/d' "/sdcard/wifi/wifi.txt"
sed -i '/^external_sim/d' "/sdcard/wifi/wifi.txt"
sed -i '/^model_number/d' "/sdcard/wifi/wifi.txt"
sed -i '/^serial_number/d' "/sdcard/wifi/wifi.txt"
sed -i 's/ssid/wifi-Name/g' "/sdcard/wifi/wifi.txt"
sed -i 's/psk/Password/g' "/sdcard/wifi/wifi.txt"
sed -i 's/"/ /g' "/sdcard/wifi/wifi.txt"
sed -i 's/key_mgmt/Encryption/g' "/sdcard/wifi/wifi.txt"
sed -i '/.disabled/d' "/sdcard/wifi/wifi.txt"
sed -i '/.priority/d' "/sdcard/wifi/wifi.txt"
echo -e '\033[1;33m'
echo -e "        _  __  _                  "
echo -e "__ __ _(_)/ _\\(_)_ __  __ _ ______"
echo -e "\\\ V  V / |  _\\| | '_ \/ _\` (_-<_-<"
echo -e " \_/\_/|_|_|  |_| .__/\__,_/__/__/"
echo -e "                |_|          "     
echo -e '\033[1;32m'
cat /sdcard/wifi/wifi.txt
echo -e '\033[1;37m'
sed -i '/^network/d' "/sdcard/wifi/device.txt"
sed -i '/^wowlan_triggers/d' "/sdcard/wifi/device.txt"
sed -i '/^tdls_external_control/d' "/sdcard/wifi/device.txt"
sed -i '/^p2p_no_group_iface/d' "/sdcard/wifi/device.txt"
sed -i '/^config_methods/d' "/sdcard/wifi/device.txt"
sed -i '/^os_version/d' "/sdcard/wifi/device.txt"
sed -i '/^device_type/d' "/sdcard/wifi/device.txt"
sed -i '/^driver_param/d' "/sdcard/wifi/device.txt"
sed -i '/^update_config/d' "/sdcard/wifi/device.txt"
sed -i '/^disable_scan_offload/d' "/sdcard/wifi/device.txt"
sed -i '/^ctrl_interface/d' "/sdcard/wifi/device.txt"
sed -i '/.scan_ssid/d' "/sdcard/wifi/device.txt"
sed -i '/.ssid/d' "/sdcard/wifi/device.txt"
sed -i '/.bssid/d' "/sdcard/wifi/device.txt"
sed -i '/.psk/d' "/sdcard/wifi/device.txt"
sed -i '/.key_mgmt/d' "/sdcard/wifi/device.txt"
sed -i '/.priority/d' "/sdcard/wifi/device.txt"
sed -i '/.disabled/d' "/sdcard/wifi/device.txt"
sed -i '/.id_str/d' "/sdcard/wifi/device.txt"
sed -i '/^}/d' "/sdcard/wifi/device.txt"
sed -i 's/p2p_disabled=1/p2p_disabled=true/g' "/sdcard/wifi/wifi.txt"
echo
echo -e '\033[1;32m'   [*]'\033[1;31m' DEVICE INFORMATION'\033[1;37m'
echo -e '\033[1;34m'
cat /sdcard/wifi/device.txt
echo -e '\033[1;37m'
echo -ne "Do you want to save this as a Text (y/n) :"
read savee
if [ $savee = "y" ] || [ $opt = "Y" ];
then
clear
echo -e "Details Saved in /sdcard/wifi/...."
echo
sleep 1
echo -e "Goodbye"
sleep 0.5
exit 0
elif [ $savee = "n" ] || [ $opt = "N" ];
then
cd /sdcard/
rm -rf wifi
clear
echo
echo -e "Goodbye"
sleep 1
exit 0
else
clear
echo -e "wrong input"
clear
bash H.sh
fi