# Automated-Login
This is a bash script for an automated login to a portal built using 'lynx'. The main motive behind this script is, an automated form entry and submission for any portal without actually visting the website.
<enter>  Now you need not have to visit a portal and enter the details manually.Just run the 'login' bash file(.sh file) to automate your portal entry.
<enter>  
<enter>  This bash script uses lynx.So, you have to make sure that you have installed 'lynx' on your linux based system.
<enter>  

<enter>**For installation of 'lynx':**


<enter>->Open your command prompt.


<enter>->Then enter the following command.


      `sudo apt-get install lynx`
<enter>


<enter>[This](https://github.com/RajuKoushik/Automated-Login/blob/master/iiitv_login.sh) is a bash code for our college(IIIT Vadodara) portal which assists the users in automatic login.
<enter>


<enter>Download the bash code and change the username and password and then run it.(Whoa! You have logged in now).


<enter>
**Command to run a bash code on terminal-**


<enter>
  `chmod +x file_name.sh`
  
  
<enter>  `./file_name.sh`


**For the execution of the bash file on boot :-**

  You have to add the command to the **rc.local** file.(sudo permissions are required gor editing the rc.local file)
    
    
  **Command to open the rc.local file-**
    
    
    `sudo gedit /etc/rc.local`
    
    
The 'login' bash script should be added inbetween and now, the whole code should be added in the rc.local (before exit 0) for its automatic execution after 20 seconds after boot.


    ` (sleep 20
    ......
    )& `
  


    
    
    
