# **_ssh config samples_**
#


- edit file in $HOME dir
 
```bash
$ vi ~/.ssh/config
```
OR
```bash
$ vi $HOME/.ssh/config
```
Add/Append the following config option for a shortcut to server1 as per our sample setup:
```
Host server1
     HostName 103.$.$.$ #server ip
     User root #or another accessible user
     Port 2222 #or defined ssh port
     IdentityFile ~/.ssh/id_rsa #path to the priv key
```
Save and close the file. To open your new SSH session to 103.$.$.$(the server trying to connect) by typing the following command:
```bash
$ ssh server1
```