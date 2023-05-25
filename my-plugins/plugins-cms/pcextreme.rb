Plugin.define do
name "pcextreme"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "pcextreme server"
website "http://www.pcextreme.nl/"
matches [
{:text=>'<p class="content" align="center">Deze server is eigendom van <a href="http://www.pcextreme.nl/">PCextreme B.V.</a></p>'},
{:url=>"/img/header_normal.png", :md5=>"f6803df276fd181667f3e6975b12b3dc"},
]
passive do
m=[]
if @headers["server"] =~ /^PCX\/(No-Cache|Dynamic)/
m << { :name=>"HTTP Server Header" }
m << { :string=>"PHP:"+@body.scan(/<td class="content">([^\s]+) \(<a href=".\/phpinfo.php" target="_blank">phpinfo<\/a>\)<\/td>/).flatten } if @body =~ /<td class="content">([^\s]+) \(<a href=".\/phpinfo.php" target="_blank">phpinfo<\/a>\)<\/td>/
end
m
end
end
