MODDIR="/data/adb/modules/Re-Malwack"
function abort() {
    echo "- $1"
    sleep 0.5
    exit 1
}

echo "
╔────────────────────────────────────────╗
│░█▀▄░█▀▀░░░░░█▄█░█▀█░█░░░█░█░█▀█░█▀▀░█░█│
│░█▀▄░█▀▀░▄▄▄░█░█░█▀█░█░░░█▄█░█▀█░█░░░█▀▄│
│░▀░▀░▀▀▀░░░░░▀░▀░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀░▀░▀│
╚────────────────────────────────────────╝
"
sleep 0.5
echo "- Upgrading Defenses 🛡️"
ping -c 1 -w 5 google.com &>/dev/null || abort "- Failed to upgrade. Please check your internet connection."

echo "- Preparing New weapons 🔫"

sh "$MODDIR/system/bin/rmlwk" --update-hosts || abort "- Failed to update hosts."

echo "- Everthing is fine now, Enjoy 😉"
