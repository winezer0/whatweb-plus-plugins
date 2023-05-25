Plugin.define do
name "Cisco-IP-Phone"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin identifies Cisco IP phones and extracts the internal hostname which is also the device's MAC adress prefixed with 'SEP'"
website "http://www.cisco.com/en/US/products/sw/voicesw/index.html"
matches [
{:model=>/<p align=center style='text-align:center'><b><span style='font-size:13.5pt; color:white'>Cisco Unified Wireless IP Phone ([^\(]{4,20}) \( [^\)]{15} \)<\/span><\/b><\/p>/, :version=>"Unified Wireless"},
{:model=>/<td HEIGHT="50" bgcolor="#003031"><p ALIGN=center><B><font color="#FFFFFF" size="6">[^<]{5,50}<\/FONT><\/B><p ALIGN=center><B><font color="#FFFFFF" size="4">Cisco Unified IP Phone ([^\(]{4,20}) \( [^\)]{15} \)[\s]?<\/FONT><\/FONT><\/B><\/TD>/, :version=>"Unified"},
{:model=>/<td HEIGHT="50" bgcolor="#003031"><p ALIGN=center><B><font color="#FFFFFF" size="6">[^<]{5,50}<\/FONT><\/B><p ALIGN=center><B><font color="#FFFFFF" size="4">Cisco[^\(]{0,15} IP Phone ([^\(]{4,20}) \( [^\)]{15} \)[\s]?<\/FONT><\/FONT><\/B><\/TD>/},
{:model=>/<title>Cisco Unified Wireless IP Phone ([^<]{4,20})<\/title><link href="\/style.css" type=text\/css rel=stylesheet><\/head>/, :version=>"Unified Wireless"},
{:string=>/<p align=center style='text-align:center'><b><span style='font-size:13.5pt; color:white'>Cisco Unified Wireless IP Phone [^\(]{4,20} \( ([^\)]{15}) \)<\/span><\/b><\/p>/, :version=>"Unified Wireless"},
{:string=>/<td HEIGHT="50" bgcolor="#003031"><p ALIGN=center><B><font color="#FFFFFF" size="6">[^<]{5,50}<\/FONT><\/B><p ALIGN=center><B><font color="#FFFFFF" size="4">Cisco Unified IP Phone [^\(]{4,20} \( ([^\)]{15}) \)[\s]?<\/FONT><\/FONT><\/B><\/TD>/, :version=>"Unified"},
{:string=>/<td HEIGHT="50" bgcolor="#003031"><p ALIGN=center><B><font color="#FFFFFF" size="6">[^<]{5,50}<\/FONT><\/B><p ALIGN=center><B><font color="#FFFFFF" size="4">Cisco[^\(]{0,15} IP Phone [^\(]{4,20} \( ([^\)]{15}) \)[\s]?<\/FONT><\/FONT><\/B><\/TD>/},
{:text=>'Cisco Unified Wireless IP Phone'},
]
end
