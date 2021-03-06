#!/bin/bash

clear

while [ 1 ]
do
CHOICE=$(
whiptail --title "Beta Menu" --menu "Make your choice" 11 50 4 \
    "1)" "VPN Torrent - New way"   \
    "2)" "VPN Torrent - Old way"   \
    "3)" "DO NOT USE - For Developers Use Only!"   \
    "4)" "Exit  "  3>&2 2>&1 1>&3
)

result=$(whoami)
case $CHOICE in

    "1)")
    clear
    bash /opt/plexguide/scripts/menus/programs/program-vpn.sh
    ;;

   "2)")
   clear
   bash /opt/plexguide/scripts/menus/torrentvpn-menu.sh
   ;;

   "3)")
   clear
   bash /opt/plexguide/scripts/test/move.sh
   echo "Testing files have now been swapped"
   echo "Please go back to the main menu to see changes"
   read -n 1 -s -r -p "Press any key to continue "
   ;;

   "4)")
    clear
    exit 0
    ;;
esac
done
exit
