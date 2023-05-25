Plugin.define do
name "Linksys-USB-HDD"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "Linksys external USB HDD web frontend"
website "http://www.linksys.com/"
dorks [
'intitle:"Network Storage Link for USB 2.0 Disks" Firmware'
]
matches [
{:firmware=>/          Version: &nbsp;V([\d\.\-a-zA-Z]+)<\/span> &nbsp;&nbsp;<\/td>/},
{:ghdb=>'intitle:"Network Storage Link for USB 2.0 Disks" Firmware', :certainty=>75},
{:model=>/	 <td align="center" width="100" class="mname">([^<]+)<\/td>/},
{:text=>'<title>Network Storage Link for USB 2.0 Disks</title>'},
]
end
