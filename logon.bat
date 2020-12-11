(wsl ip addr | wsl grep eth0 | wsl grep inet | wsl cut -d" " -f6 | wsl cut -d"/" -f1 )>tmp
set /p ipadd=<tmp
echo %ipadd%
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=2222 connectaddress=%ipadd% connectport=2222
netsh advfirewall firewall add rule name="Open Port 2222 for WSL2" dir=in action=allow protocol=TCP localport=2222
wsl -u root sudo service ssh start

