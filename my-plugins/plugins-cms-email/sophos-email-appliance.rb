Plugin.define do
name "Sophos-Email-Appliance"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sophos Email Appliances provide simple, powerful protection against spam, malware and data loss."
website "http://www.sophos.com/en-us/products/email/email-appliances.aspx"
dorks [
'intitle:"Sophos Email Appliance" "Enter your login and password to log in."'
]
matches [
{:search=>"all", :text=>'Sophos Email Appliance'},
{:search=>"headers", :string=>/[Ss]erver: Sophos Email Appliance\r?\n.+Location: https?:\/\/([^\/]+)/m},
{:search=>"headers[server]", :regexp=>/^Sophos Email Appliance$/},
{:text=>'<!-- end main content -->', :certainty=>25},
{:text=>'<td class="logincontent" valign="top"><a href="http://www.sophos.com"><img src="images/logo_sophos.gif" border="0" alt="Email Appliance"></a></td>'},
{:text=>'<title>Sophos Email Appliance</title>', :certainty=>75},
{:url=>"/favicon.ico",:allhash=>"f6c5f5e8857ecf561029fc5da005b6e3"},
]
end
