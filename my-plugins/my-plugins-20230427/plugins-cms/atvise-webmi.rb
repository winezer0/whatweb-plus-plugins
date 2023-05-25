Plugin.define do
name "Atvise-webMI"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Web-based HMI server - atvise webMI compliant web servers can be extremely slim and work on the smallest hardware."
website "http://www.atvise.com/en/how-it-works"
matches [
{:search=>"headers", :text=>'atvise'},
{:search=>"headers[server]", :regexp=>/^atvise$/},
{:text=>'<td><noscript>N/A</noscript><script type="text/javascript"><!--'},
{:text=>'alarmlistbutton'},
{:url=>"/visu.htm", :text=>'<li class="btn"><a class="button" style="left:93%;" href="javascript:void(0)" target="mainframe" id="alarmlistbutton"><img height="30" width="47" src="buttonc.gif" alt="" /></a></li>'},
]
end
