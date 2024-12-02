echo "
  ╔────────────────────────────────────────╗
  │░█▀▄░█▀▀░░░░░█▄█░█▀█░█░░░█░█░█▀█░█▀▀░█░█│
  │░█▀▄░█▀▀░▄▄▄░█░█░█▀█░█░░░█▄█░█▀█░█░░░█▀▄│
  │░▀░▀░▀▀▀░░░░░▀░▀░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀░▀░▀│
  ╚────────────────────────────────────────╝
"
sleep 0.5
echo "       Upgrading Defenses🛡️, this may take a while...."
ping -w 1 google.com &>/dev/null
if [ $? -ne 0 ]; then
    echo "Failed to upgrade. Please check your internet connection."
    sleep 2
    exit 1
fi

# Download the hosts file and save it as "hosts"
        wget -O hosts1 https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts #122k hosts
        wget -O hosts2 https://raw.githubusercontent.com/hagezi/dns-blocklists/main/hosts/pro-compressed.txt # 550k entries compressed into 61k
        wget -O hosts3 https://hblock.molinero.dev/hosts # 458k hosts

echo "       Preparing New weapons🔫..."
{
    for j_cole in /system/etc/hosts /sdcard/hosts1 /sdcard/hosts2 ; do
        cat $j_cole
        echo ""
    done
} | sort | uniq > /data/adb/modules/Re-Malwack/system/etc/hosts

# let's see if the file was downloaded or not.
if [ ! -f "/sdcard/hosts1" ]; then
    echo "       Looks like there is a problem with some weapons, maybe check your internet connection?"
else 
    echo "       Everthing is fine now, Enjoy 😉"
    rm /sdcard/hosts1
    rm /sdcard/hosts2
    rm /sdcard/hosts3
    rm /sdcard/hosts4
    rm /sdcard/hosts5
    rm /sdcard/hosts6
    sleep 1.5
fi
