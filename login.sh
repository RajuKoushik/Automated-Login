#!/bin/bash


script=login.txt

#This script is suitable for a HTML page which has 2 fields of 'username' and 'password' with a submit button.
#This script uses 'lynx' which automatically loads the website into the command prompt.
#Now, the fields can be navigated easily using the 'tab' keys, and the text fields can be filled with ease.


#change the username with the respective username
username=your_username

#change the password with your password
password=your_password

#change the resultant target website
website=target_website

#This tab key is to reach the first 'text-field' of the website virtually
echo 'key <tab>' >> $script

#This snippet is to enter the 'username'(the first text-field) into the first text field
for i in `echo $username|fold -w1` 
do
    echo 'key '$i >> $script
done


#This tab key is to reach the next text key
echo 'key <tab>' >> $script

#Similarly ,this snippet is to enter the 'password'(the second text-field) into the first text field
for i in `echo $password|fold -w1` 
do
    echo 'key '$i >> $script
done

#This tab key is to reach the next text key
echo 'key <tab>' >> $script

#This helps to click the 'submit' button.
echo 'key ^J' >> $script

#These are used to Quit the command prompt.
echo 'key Q' >> $script
echo 'key y' >> $script


#Use of 'lynx' here
lynx $website -accept_all_cookies -cmd_script=login.txt






