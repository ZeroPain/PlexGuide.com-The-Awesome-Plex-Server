 #!/bin/bash

clear

while [ 1 ]
do
CHOICE=$(
whiptail --title "Program Categories" --menu "Make your choice" 10 27 3 \
    "1)" "Portainer"   \
    "2)" "NGINX-LetsEncrypt"   \
    "3)" "Exit  "  3>&2 2>&1 1>&3
)

result=$(whoami)
case $CHOICE in
    "1)")
    ansible-playbook /opt/plexguide/ansible/plexguide.yml --tags portainer
    echo "Portainer: http://ipv4:9000 | For Traefik Proxy portainer.domain.com"
    echo ""
    read -n 1 -s -r -p "Press any key to continue "
    ;;

    "2)")
    ansible-playbook /opt/plexguide/ansible/plexguide.yml --tags nginx
    echo ""
    read -n 1 -s -r -p "Press any key to continue "
    ;;

     "3)")
      clear
      exit 0
      ;;
esac
done
exit
