$myip1  =  "10.11.1.8"
$cred1  =  Get-Credential
$con1 = New-PSsession -ComputerName $myip1 -credential $cred1

#Get-PSSession

#Enter-PSSession 1

@CiscoWireless:
config t
Dot11 ssid wins11wifi
authentication open
authentication key-management wpa
wpa-psk ascii winser123
guest-mode
int dot11radio 0
no shut
encryption mode ciphers tkip
ssid wins11wifi


@Coreswitch
config T:
ip routing
int vlan 10
ip helper-address 10.11.1.10
end

config T:
ip routing
int vlan 50
ip helper-address 10.11.1.10
end


@task 9
add-DnsServerResourceRecord -zonename gawako11.com -Cname -name bago -hostname w22.gawako11.com

New-Website -name "pangApat" -hostheader "bago.gawako11.com" -physicalpath "d:\webs\appbiz"


@task 10: installing your own email servers
MicrosoftExchange = supermahal
ZimbraEmail = mapapamura ka
Hmail = pang Lab

