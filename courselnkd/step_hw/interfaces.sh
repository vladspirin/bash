# interfaces(5) file used by ifup(8) and ifdown(8)
auto lo
iface lo inet loopback


#auto enp0s25
#iface enp0s25 inet manual

auto enp0s25
iface enp0s25 inet static
   #vlan-raw-device enp0s25
    address 172.20.4.141
    netmask 255.255.255.0
    dns-nameservers 193.93.16.8 193.93.16.11
    up route add -net 172.16.0.0/12 gw 172.20.4.1
    up route add -net 192.168.0.0/16 gw 172.20.4.1
    up route add -net 100.64.0.0/10 gw 172.20.4.1
    up route add default gw 172.20.4.1 metric 100

auto ppp0
        iface ppp0 inet ppp
        provider acom
