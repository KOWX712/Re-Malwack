echo "
  ╔────────────────────────────────────────╗
  │░█▀▄░█▀▀░░░░░█▄█░█▀█░█░░░█░█░█▀█░█▀▀░█░█│
  │░█▀▄░█▀▀░▄▄▄░█░█░█▀█░█░░░█▄█░█▀█░█░░░█▀▄│
  │░▀░▀░▀▀▀░░░░░▀░▀░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀░▀░▀│
  ╚────────────────────────────────────────╝
"
sleep 0.5
echo "       Upgrading Defenses🛡️...."
ping -w 1 google.com &>/dev/null || abort "       Failed to Upgrade, Please check your internet connection." && sleep 1.5
# Download the hosts file and save it as "hosts"
wget -O /sdcard/hosts https://hosts.ubuntu101.co.za/hosts

echo "       Preparing New weapons🔫..."
{
    for j_cole in /system/etc/hosts /sdcard/hosts ; do
        cat $j_cole
        echo ""
    done
} | sort | uniq > /data/adb/modules/Re-Malwack/system/etc/hosts

# let's see if the file was downloaded or not.
if [ ! -f "/sdcard/hosts" ]; then
    echo "       Looks like there is a problem with some weapons, maybe check your internet connection?"
else 
    echo "       Everthing is fine now, Enjoy 😉"
    rm /sdcard/hosts
    sleep 1
fi
