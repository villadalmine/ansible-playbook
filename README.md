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
