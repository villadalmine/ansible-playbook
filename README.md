# ansible-playbook
Lab de pruebas

## Vagrant File

"bash variable"
VAGRANT_VAGRANTFILE=NombreVagrantFile
"fish variable"
set VAGRANT_VAGRANTFILE NombreVagrantFile
ln -sf dns Vagrantfile
** vagrant --provider virtualbox up **
Create network
vboxmanage dhcpserver add --netname intnet --ip 10.10.0.1 --netmask 255.255.0.0 --lowerip 10.10.10.1 --upperip 10.10.10.255 --enable
vboxmanage list intnets
VBoxManage natnetwork add \
--netname 10.20.14-NAT \
--network "10.20.14.0/24" \
--enable

VBoxManage dhcpserver add \
--netname 10.20.14-NAT \
--ip 10.20.14.3 \
--netmask 255.255.255.0 \
--lowerip 10.20.14.200 \
--upperip 10.20.14.250 \
--enable

vboxmanage dhcpserver modify --netname HostInterfaceNetworking-vboxnet0 --disable
vboxmanage list dhcpservers

https://blogs.oracle.com/scoter/networking-in-virtualbox-v2


primero se fijan la direccion ipv6 del source
       valid_lft forever preferred_lft forever
3: enp0s8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qlen 1000
    inet6 2001::db8:0:1:128/64 scope global
       valid_lft forever preferred_lft forever
    inet6 fd17:625c:f037:1c80:a00:27ff:febe:b5a1/64 scope global mngtmpaddr dynamic
       valid_lft forever preferred_lft forever
    inet6 fe80::a00:27ff:febe:b5a1/64 scope link
       valid_lft forever preferred_lft forever


luego  agarran esa ip

fd17:625c:f037:1c80:a00:27ff:febe:b5a1/64

http://www.gestioip.net/cgi-bin/subnet_calculator.cgi

	fd17:625c:f037:1c80::/64
  
  network range	fd17:625c:f037:1c80:0000:0000:0000:0000-
fd17:625c:f037:1c80:ffff:ffff:ffff:ffff
  
  
