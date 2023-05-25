Plugin.define do
name "H3C-SecBlade-FireWall"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "H3C SecBlade FireWall modules are industry-leading 10000-Mbps high-performance firewall modules"
website "http://www.h3c.com/portal/Products___Solutions/Products/Security_Products/H3C_SecBlade_Module/H3C_SecBlade_FW/"
matches [
{:search=>"headers[server]", :regexp=>/^Switch$/},
{:text=>'<a href="../cn/login.html"><img border="0" src="../images/Cnlink.jpg" alt="Chinese"></a>'},
{:text=>'<a href="../en/login.html"><img border="0" src="../images/Enlink.jpg" alt="English"></a>'},
{:text=>'<script language=javascript src="/js/MulPlatAPI.js"></script>'},
{:text=>'<script language=javascript src="js/MulPlatAPI.js"></script>'},
{:text=>'js/MulPlatAPI.js'},
]
end
