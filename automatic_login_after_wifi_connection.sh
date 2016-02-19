#!/bin/bash

IF=$1
STATUS=$2

#IIITV1 is the wifi ssd of our college. This IIITV1 can be replaced with the target wifi name.

if [ "$IF" == "IIITV1" ]
then
    case "$2" in
        up)
        logger -s "Login Script up triggered"
        script=login.txt

	username=your_username
	password=your_password



	echo 'key <tab>' >> $script


	for i in `echo $username|fold -w1` 
	do
    		echo 'key '$i >> $script
	done



	echo 'key <tab>' >> $script


	for i in `echo $password|fold -w1` 
	do
    		echo 'key '$i >> $script
	done


	echo 'key <tab>' >> $script
	echo 'key ^J' >> $script
	echo 'key Q' >> $script
	echo 'key y' >> $script

	lynx http://10.100.1.1:8090 -accept_all_cookies -cmd_script=login.txt
        ;;
        
        *)
        ;;
    esac
fi
