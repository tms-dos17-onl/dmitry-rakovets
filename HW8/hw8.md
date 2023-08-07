## 1. Вывести в консоль список всех пользователей системы.
```
dmitry@Mint-Study:~/TechMeSkills/dmitry-rakovets$ cat /etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:100:102:systemd Network Management,,,:/run/systemd:/usr/sbin/nologin
systemd-resolve:x:101:103:systemd Resolver,,,:/run/systemd:/usr/sbin/nologin
messagebus:x:102:105::/nonexistent:/usr/sbin/nologin
systemd-timesync:x:103:106:systemd Time Synchronization,,,:/run/systemd:/usr/sbin/nologin
syslog:x:104:111::/home/syslog:/usr/sbin/nologin
_apt:x:105:65534::/nonexistent:/usr/sbin/nologin
tss:x:106:112:TPM software stack,,,:/var/lib/tpm:/bin/false
rtkit:x:107:113:RealtimeKit,,,:/proc:/usr/sbin/nologin
systemd-coredump:x:108:114:systemd Core Dumper,,,:/run/systemd:/usr/sbin/nologin
kernoops:x:109:65534:Kernel Oops Tracking Daemon,,,:/:/usr/sbin/nologin
uuidd:x:110:119::/run/uuidd:/usr/sbin/nologin
cups-pk-helper:x:111:115:user for cups-pk-helper service,,,:/home/cups-pk-helper:/usr/sbin/nologin
lightdm:x:112:120:Light Display Manager:/var/lib/lightdm:/bin/false
tcpdump:x:113:122::/nonexistent:/usr/sbin/nologin
speech-dispatcher:x:114:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
avahi-autoipd:x:115:125:Avahi autoip daemon,,,:/var/lib/avahi-autoipd:/usr/sbin/nologin
usbmux:x:116:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
nm-openvpn:x:117:126:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
geoclue:x:118:127::/var/lib/geoclue:/usr/sbin/nologin
dnsmasq:x:119:65534:dnsmasq,,,:/var/lib/misc:/usr/sbin/nologin
pulse:x:120:128:PulseAudio daemon,,,:/run/pulse:/usr/sbin/nologin
_flatpak:x:121:131:Flatpak system-wide installation helper,,,:/nonexistent:/usr/sbin/nologin
avahi:x:122:132:Avahi mDNS daemon,,,:/run/avahi-daemon:/usr/sbin/nologin
saned:x:123:133::/var/lib/saned:/usr/sbin/nologin
colord:x:124:134:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
fwupd-refresh:x:125:135:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
hplip:x:126:7:HPLIP system user,,,:/run/hplip:/bin/false
dmitry:x:1000:1000:Dmitry,,,:/home/dmitry:/bin/bash
sssd:x:127:137:SSSD system user,,,:/var/lib/sss:/usr/sbin/nologin
user_with_group:x:1001:1001::/var/home/user:/bin/sh
_chrony:x:128:139:Chrony daemon,,,:/var/lib/chrony:/usr/sbin/nologin
``` 
## 2. Найти и вывести в консоль домашние каталоги для текущего пользователя и root.
```
dmitry@Mint-Study://home/dmitry$ cat /etc/passwd | grep 'root'
root:x:0:0:root:/root:/bin/bash
nm-openvpn:x:117:126:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
dmitry@Mint-Study://home/dmitry$ cat /etc/passwd | grep 'dmitry'
dmitry:x:1000:1000:Dmitry,,,:/home/dmitry:/bin/bash
``` 
## 3. Создать Bash скрипт get-date.sh, выводящий текущую дату.
```
file get-date.sh
``` 
## 4. Запустить скрипт через ./get-date.sh и bash get-date.sh. Какой вариант не работает? Сделать так, чтобы оба варианта работали.
```
dmitry@Mint-Study://home/dmitry/TechMeSkills/dmitry-rakovets/HW8$ ./get-date.sh
-bash: ./get-date.sh: Permission denied

dmitry@Mint-Study://home/dmitry/TechMeSkills/dmitry-rakovets/HW8$ bash get-date.sh
Пн 07 авг 2023 14:22:05 MSK

dmitry@Mint-Study://home/dmitry/TechMeSkills/dmitry-rakovets/HW8$ chmod +x ./get-date.sh
dmitry@Mint-Study://home/dmitry/TechMeSkills/dmitry-rakovets/HW8$ ./get-date.sh
Пн 07 авг 2023 14:19:24 MSK
``` 
## 5. Создать пользователей alice и bob с домашними директориями и установить /bin/bash в качестве командной оболочки по умолчанию.
```
dmitry@Mint-Study://home/dmitry/TechMeSkills/dmitry-rakovets/HW8$ sudo useradd -m -s /bin/bash alice      
dmitry@Mint-Study://home/dmitry/TechMeSkills/dmitry-rakovets/HW8$ sudo useradd -m -s /bin/bash bob
``` 
## 6. Запустить интерактивную сессию от пользователя alice. Создать файл secret.txt с каким-нибудь секретом в домашней директории при помощи текстового редактора nano.
```
dmitry@Mint-Study://home/dmitry/TechMeSkills/dmitry-rakovets/HW8$ sudo su alice

alice@Mint-Study:~$ pwd
/home/alice
alice@Mint-Study:~$ nano secret.txt

``` 
## 7. Вывести права доступа к файлу secret.txt.
```
alice@Mint-Study:~$ ls -ls 
итого 4
4 -rw-rw-r-- 1 alice alice 15 авг  7 14:41 secret.txt
``` 
## 8. Выйти из сессии от alice и открыть сессию от bob. Вывести содержимое файла /home/alice/secret.txt созданного ранее не прибегая к команде sudo. В случае, если это не работает, объяснить.
```
alice@Mint-Study:~$ exit
exit
dmitry@Mint-Study://home/dmitry/TechMeSkills/dmitry-rakovets/HW8$ sudo su bob
bob@Mint-Study:/home/dmitry/TechMeSkills/dmitry-rakovets/HW8$ cat /home/alice/secret.txt
cat: /home/alice/secret.txt: Отказано в доступе
``` 
Пользователи alice и bob находятся в разных группах, поэтомуv у пользователя bob нет прав на просмотр содержимого файла  

## 9. Создать файл secret.txt с каким-нибудь секретом в каталоге /tmp при помощи текстового редактора nano.
```
bob@Mint-Study:/home/dmitry/TechMeSkills/dmitry-rakovets/HW8$ nano /tmp/secret.txt

bob@Mint-Study:/home/dmitry/TechMeSkills/dmitry-rakovets/HW8$ cat /tmp/secret.txt
DevOps is good
``` 
## 10. Вывести права доступа к файлу secret.txt. Поменять права таким образом, чтобы этот файл могли читать только владелец и члены группы, привязанной к файлу.
```
bob@Mint-Study:~$ ls -ls /tmp/secret.txt 
4 -rw-rw-r-- 1 bob bob 15 авг  7 14:53 /tmp/secret.txt
bob@Mint-Study:~$ chmod 440 /tmp/secret.txt
bob@Mint-Study:~$ ls -ls /tmp/secret.txt 
4 -r--r----- 1 bob bob 15 авг  7 14:53 /tmp/secret.txt
``` 
## 11. Выйти из сессии от bob и открыть сессию от alice. Вывести содержимое файла /tmp/secret.txt созданного ранее не прибегая к команде sudo. В случае, если это не работает, объяснить.
```
bob@Mint-Study:~$ exit
exit
dmitry@Mint-Study://home/dmitry/TechMeSkills/dmitry-rakovets/HW8$ sudo su alice
[sudo] пароль для dmitry:      
alice@Mint-Study:/home/dmitry/TechMeSkills/dmitry-rakovets/HW8$ cat /tmp/secret.txt
cat: /tmp/secret.txt: Отказано в доступе
 ```
 Пользователи alice и bob находятся в разных группах, поэтому у пользователя alice нет прав на просмотр содержимого файла 

## 12. Добавить пользователя alice в группу, привязанную к файлу /tmp/secret.txt.
```
dmitry@Mint-Study:~$ sudo usermod -a -G bob alice
``` 
## 13. Вывести содержимое файла /tmp/secret.txt.
```
dmitry@Mint-Study:~$ sudo su alice
alice@Mint-Study:/home/dmitry$ cd
alice@Mint-Study:~$ cat /tmp/secret.txt
DevOps is good
``` 
## 14. Скопировать домашнюю директорию пользователя alice в директорию /tmp/alice с помощью rsync.
```
dmitry@Mint-Study:~$ sudo rsync -avP /home/alice/ /tmp/alice/
sending incremental file list
created directory /tmp/alice
./
.bash_history
            231 100%    0,00kB/s    0:00:00 (xfr#1, to-chk=17/19)
.bash_logout
            220 100%  214,84kB/s    0:00:00 (xfr#2, to-chk=16/19)
.bashrc
          3.771 100%    3,60MB/s    0:00:00 (xfr#3, to-chk=15/19)
.gtkrc-2.0
             22 100%   21,48kB/s    0:00:00 (xfr#4, to-chk=14/19)
.gtkrc-xfce
            516 100%  503,91kB/s    0:00:00 (xfr#5, to-chk=13/19)
.profile
            807 100%  788,09kB/s    0:00:00 (xfr#6, to-chk=12/19)
secret.txt
             15 100%   14,65kB/s    0:00:00 (xfr#7, to-chk=11/19)
.config/
.config/caja/
.config/caja/desktop-metadata
            265 100%  129,39kB/s    0:00:00 (xfr#8, to-chk=5/19)
.config/hexchat/
.config/hexchat/hexchat.conf
            263 100%  128,42kB/s    0:00:00 (xfr#9, to-chk=4/19)
.config/hexchat/servlist.conf
          8.453 100%    4,03MB/s    0:00:00 (xfr#10, to-chk=3/19)
.config/qt5ct/
.config/qt5ct/qt5ct.onf
            745 100%  145,51kB/s    0:00:00 (xfr#11, to-chk=/19)
.local/
.local/share/
.local/share/nano/

sent 16.325 bytes  received 297 bytes  33.244,00 bytes/sec
total size is 15.308  speedup is 0,92
``` 
## 15. Скопировать домашнюю директорию пользователя alice в директорию /tmp/alice на другую VM по SSH с помощью rsync. Как альтернатива, можно скопировать любую папку с хоста на VM по SSH.
```

``` 
## 16. Удалить пользователей alice и bob вместе с домашними директориями.
```

``` 
## 17. С помощью утилиты htop определить какой процесс потребляет больше всего ресурсов в системе.
```
![task17](htop.png)
``` 
## 18. Вывести логи сервиса Firewall с помощью journalctl не прибегая к фильтрации с помощью grep.
```
dmitry@Mint-Study:~$ journalctl -u ufw
июн 23 11:39:08 dmitry systemd[1]: Starting Uncomplicated firewall...
июн 23 11:39:08 dmitry systemd[1]: Finished Uncomplicated firewall.
-- Boot 3f408c631b5346c69fa74144bd982ec2 --
июн 23 13:09:20 dmitry systemd[1]: Starting Uncomplicated firewall...
июн 23 13:09:20 dmitry systemd[1]: Finished Uncomplicated firewall.
-- Boot 6429832862314e1eaafb61690f89f0f4 --
июн 23 13:30:46 dmitry systemd[1]: Starting Uncomplicated firewall...
июн 23 13:30:46 dmitry systemd[1]: Finished Uncomplicated firewall.
-- Boot 1777a0cf044743959073d228d8a61b2f --
июн 23 14:55:07 dmitry systemd[1]: Starting Uncomplicated firewall...
июн 23 14:55:07 dmitry systemd[1]: Finished Uncomplicated firewall.
-- Boot 7d578fc8e2154267b1c3b2f145279834 --
июн 23 16:00:13 dmitry systemd[1]: Starting Uncomplicated firewall...
июн 23 16:00:13 dmitry systemd[1]: Finished Uncomplicated firewall.
-- Boot 9206b843706e4650adbf4063737f1043 --
июн 30 10:47:16 Mint-Study systemd[1]: Starting Uncomplicated firewall...
июн 30 10:47:16 Mint-Study systemd[1]: Finished Uncomplicated firewall.
-- Boot d14475425d5849fdb59f1ab54c29ac56 --
июн 30 11:47:07 Mint-Study systemd[1]: Starting Uncomplicated firewall...
июн 30 11:47:07 Mint-Study systemd[1]: Finished Uncomplicated firewall.
-- Boot 4c3caf96ed3e4d589a535390c5f37563 --
июн 30 12:06:04 Mint-Study systemd[1]: Starting Uncomplicated firewall...
июн 30 12:06:04 Mint-Study systemd[1]: Finished Uncomplicated firewall.
-- Boot 57b2e823088846798f8809c3a6be6ea3 --
июн 30 12:26:23 Mint-Study systemd[1]: Starting Uncomplicated firewall...
июн 30 12:26:23 Mint-Study systemd[1]: Finished Uncomplicated firewall.
-- Boot f93bb4caa4c346d78876f83c44d28e1b --
июн 30 12:35:50 Mint-Study systemd[1]: Starting Uncomplicated firewall...
июн 30 12:35:50 Mint-Study systemd[1]: Finished Uncomplicated firewall.
-- Boot 3ab516a0323e4cf29a59c77663a6d8be --
июн 30 12:44:23 Mint-Study systemd[1]: Starting Uncomplicated firewall...
июн 30 12:44:23 Mint-Study systemd[1]: Finished Uncomplicated firewall.
-- Boot 79b1cdb45f13458d9462753ddd741838 --
июн 30 12:54:50 Mint-Study systemd[1]: Starting Uncomplicated firewall...
июн 30 12:54:50 Mint-Study systemd[1]: Finished Uncomplicated firewall.
-- Boot 7728989d6346409b8d40faf5f18b377d --
июн 30 13:47:48 Mint-Study systemd[1]: Starting Uncomplicated firewall...
июн 30 13:47:48 Mint-Study systemd[1]: Finished Uncomplicated firewall.
-- Boot 6d998691d1a1456e8a515feceddb85e4 --
июл 06 14:59:18 Mint-Study systemd[1]: Starting Uncomplicated firewall...
июл 06 14:59:18 Mint-Study systemd[1]: Finished Uncomplicated firewall.
-- Boot 71cc2990c9a04c99a81c218abf80da6c --
июл 06 16:00:27 Mint-Study systemd[1]: Starting Uncomplicated firewall...
июл 06 16:00:27 Mint-Study systemd[1]: Finished Uncomplicated firewall.
-- Boot f1b0ed4289a0414a9ddb795b6469a5da --
июл 11 10:17:45 Mint-Study systemd[1]: Starting Uncomplicated firewall...
июл 11 10:17:45 Mint-Study systemd[1]: Finished Uncomplicated firewall.
```