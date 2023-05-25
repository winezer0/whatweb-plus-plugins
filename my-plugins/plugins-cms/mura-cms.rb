Plugin.define do
name "Mura-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Mura CMS (previously known as Sava CMS) is an open source CMS for ColdFusion."
website "http://www.getmura.com/"
matches [
{:regexp=>/Mura CMS ([\d]+)/,:offset=>1, :search=>'body'},
{:text=>'<form novalidate="novalidate" id="sendLogin" name="sendLogin" method="post" action="index.cfm?fuseaction=cLogin.main" onsubmit="javascript:if(document.sendLogin.email.value !=\'\'){return true;}else{return false;}">'},
{:text=>'Powered by <a href="http://www.getmura.com/">Mura CMS</a>'},
{:version=>/<meta name="generator" content="(Mura|Sava) CMS ([\d\.]+)" \/>/, :offset=>1},
]
end
