## 1. Определить все IP адреса, маски подсетей и соответствующие MAC адреса Linux VM. Определите класс и адреса подсетей, в которых находится VM.
```
dmitry@Mint-Study:~$ ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.22.16.187  netmask 255.255.240.0  broadcast 172.22.31.255
        inet6 fe80::3a07:265:c4f6:62da  prefixlen 64  scopeid 0x20<link>
        ether 00:15:5d:00:8c:0a  txqueuelen 1000  (Ethernet)
        RX packets 488273  bytes 793168873 (793.1 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 388696  bytes 78373094 (78.3 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Локальная петля (Loopback))
        RX packets 44048  bytes 4455875 (4.4 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 44048  bytes 4455875 (4.4 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
``` 
Интерфейс ВМ eth0: ip 172.22.16.187, маска подсети 255.255.240.0, MAC адрес 00:15:5d:00:8c:0a, класс подсети В. Локальный интерфейс ВМ lo: ip 127.0.0.1, маска подсети 255.0.0.0, класс подсети А

## 2. Определить публичный IP адрес хоста и Linux VM? Чем они отличаются?
```
dmitry@Mint-Study:~$ curl ifconfig.me
86.57.144.74

C:/Users/Dmitry>curl.exe ifconfig.me
86.57.122.74
``` 
Адреса одинаковые, т.к. ВМ использует сеть хоста через NAT
## 3. Вывести ARP таблицу на хосте и найти там запись, соответствующую MAC адресу с предыдущего задания. Если её нет, то объяснить почему.
```
C:\Users\Dmitry> arp -a | find "00-15-5d-00-8c-0a"
  172.22.16.187         00-15-5d-00-8c-0a     статический
  172.22.205.12         00-15-5d-00-8c-0a     динамический
``` 
## 4. Выполнить разбиение сети 172.20.0.0/16 на подсети с маской /24 и ответить на следующие вопросы:
- Сколько всего подсетей будет в сети?
  **Ответ: 256**
- Сколько узлов будет в каждой подсети?
  **Ответ: 254**
- Каким будет сетевой адрес первой и второй подсети?
  **Ответ: 172.20.0.0\24, 172.20.1.0\24**
- Каким будут адреса первого и последнего хостов в первой и второй подсетях?
  **Ответ: 172.20.0.1, 172.20.0.254; 172.20.1.1, 172.20.1.254**
- Каким будет широковещательный адрес в последней подсети?
  **Ответ: 172.20.255.255**
## 5. Найти IP адрес соответствующий доменному имени ya.ru. Выполнить HTTP запрос на указанный IP адрес, чтобы скачать страницу с помощью утилиты curl. В результате должна вывестись HTML страничка в консоль. Подсказка: https://stackoverflow.com/questions/46563730/can-i-access-to-website-using-ip-address
```
dmitry@Mint-Study:~$ nslookup ya.ru
Server:		127.0.0.53
Address:	127.0.0.53#53

Non-authoritative answer:
Name:	ya.ru
Address: 77.88.55.242
Name:	ya.ru
Address: 5.255.255.242
Name:	ya.ru
Address: 2a02:6b8::2:242

dmitry@Mint-Study:~$ curl 77.88.55.242 -v -L -H 'Host: ya.ru' >> curl_Yandex.html
``` 
