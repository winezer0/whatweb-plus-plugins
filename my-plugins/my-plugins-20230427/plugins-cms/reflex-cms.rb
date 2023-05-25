Plugin.define do
name "reflex-cms"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ReFlex CMS is an extremely flexible ASP.NET based website and content management platform that can be used to construct highly functional commercial websites, social networking applications, intranets, personal portals and blog sites. ReFlex CMS can also be easily added to existing sites."
website "http://www.impelsystems.com.au/reflex-cms-website-framework/overview-5.aspx"
matches [
{:regexp=>/<link id="ctl00_hlnk[^"]+" rel="stylesheet" type="text\/css"[^>]+href="[^"]*\/Site\/Resources\/css\/(layout|styles).css" \/>/},
{:text=>'<img src="Resources/images/reflex.png" alt="ReFlex Administration" />'},
{:text=>'<script defer type="text/javascript" src="Resources/js/pngfix.js"></script>'},
{:text=>'var Page_Validators =  new Array(document.getElementById("ctl00_cphMain_rfvUserName"), document.getElementById("ctl00_cphMain_rfvUserPassword"));'},
{:url=>"/Admin/Resources/images/reflex.png", :md5=>"982a1eb449c954d214307a20dc2301ea"},
]
end
