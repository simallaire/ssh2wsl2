# SSH to WSL2

### Note
- You may have to modify the first command to match your `ip addr` output 
- Add a rule to your firewall
```
netsh advfirewall firewall add rule name="Open Port 2222 for WSL2" dir=in action=allow protocol=TCP localport=2222
```
- Modify /etc/ssh/sshd_config to use port 2222

### Usage
Setup a task in Task Scheduler to run at logon time with a 30 sec delay
