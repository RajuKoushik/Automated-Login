#!/bin/bash
script=login.txt
#change your 'username' and 'password'


username=your_college_id
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






