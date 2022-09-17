:: Get the local IP of wsl2 and save it to a temp fiLe
(wsl ip addr | wsl grep eth0 | wsl grep inet | wsl cut -d" " -f6 | wsl cut -d"/" -f1 )>tmp
:: Set a variable with the ip addr
set /p ipadd=<tmp
echo %ipadd%
:: Forward the port 2222 
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=2222 connectaddress=%ipadd% connectport=2222
:: Start ssh as root in wsl
wsl -u root sudo service ssh start

