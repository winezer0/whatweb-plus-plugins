Plugin.define do
name "inout-adserver"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'<title>Inout Adserver - Pay Per Click Advertising Expert!</title>'},
{:text=>'<title>Inout Search Engine Admin Login</title>'},
{:text=>'Powered by <a href="http://www.inoutscripts.com/?r=0">Inoutscripts</a>', :certainty=>75},
{:text=>'Powered by Inoutscripts'},
{:text=>'function trim(stringValue){return stringValue.replace(/(^\s*|\s*$)/, "");}', :certainty=>75},
]
end