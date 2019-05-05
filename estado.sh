#!/bin/bash

echo "************************ [General] ****************************"
echo " "
echo "  Hora:           " `date '+%m-%d-%y %H:%M:%S'`
echo "  IPs:            " `ifconfig | grep "inet addr:" | cut -f2 -d":" | cut -f1 -d" "`
echo "  Kernel: " `uname -r`
echo " "

echo "************************ [Hardware] ***************************"
echo " "
echo "  Procesador:             " `cat /proc/cpuinfo | grep "model name" | uniq | cut -f2 -d":"`
echo "  Núm.Prosd/nucleos:      " `cat /proc/cpuinfo | grep processor | wc -l`
echo " "

echo "*********************** [Memoria RAM] **************************"
echo " "
echo "  Memoria total:  " `free -m | grep Mem | awk '{print $(2)}'` Mb.
echo "  Memoria usada:   " `free -m | grep Mem | awk '{print $(3)}'` Mb.
echo "  Memoria free:   " `free -m | grep Mem | awk '{print $(4)}'` Mb.
echo " "

echo "********************** [Memoria SWAP] **************************"
echo " "
echo "  Memoria total:  " `free -m | grep Swap | awk '{print $(2)}'` Mb.
echo "  Memoria used:   " `free -m | grep Swap | awk '{print $(3)}'` Mb.
echo "  Memoria free:   " `free -m | grep Swap | awk '{print $(4)}'` Mb.
echo " "

echo "********************** [Uso de Disco] **************************"
disco=`df -h`
echo -e "-- Disco --\r\n$disco\r\n\r\n"

echo "************************** [More Info] *************************"
echo " "
echo "  Uptime:                 " `uptime | cut -f4 -d" "` días
echo "  Usuarios conectados:    " `w | wc -l`
echo "  Procesos:               " `ps aux | wc -l`
echo "  Carga de procesador:    " `uptime | awk '{print $(NF - 2), $(NF - 1), $NF}'`
echo " "

echo "************************ [LAMP] ********************************"
echo " "
echo "  Status serverTxt3015 :       " `service serverTxt3015 status`
echo 
echo " "

echo "********************* [Puertos abiertos] ***********************"
echo " "
echo "  (22)   SSH:             " `nmap localhost -p 22 | grep 22 | cut -f2 -d" "`
echo "  (3015)   ServerBalanced1.0:  " `nmap localhost -p 3015 | grep 3015 | cut -f2 -d" "`
echo " "
echo "****************************************************************"