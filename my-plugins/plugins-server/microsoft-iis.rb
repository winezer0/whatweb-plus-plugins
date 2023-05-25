Plugin.define do
name "Microsoft-IIS"
authors [
"Andrew Horton",
"Max Davitt", 
]
version "0.2"
description "Microsoft Internet Information Services (IIS) for Windows Server is a flexible, secure and easy-to-manage Web server for hosting anything on the Web. From media streaming to web application hosting, IIS's scalable and open architecture is ready to handle the most demanding tasks."
website "http://www.iis.net/"
matches [
{:regexp=>/<img src="welcome.png" alt="IIS/},

{:search=>"headers[server]", :version=>/Microsoft-IIS\/([\d\.]+)/i},
{:search=>'headers[server]',:offset=>1, :regexp=>/^(?:Microsoft-)?IIS(?:.([\d.]+))?/},
{:search=>"header",:regexp=>/Server: Microsoft-IIS.*/},

{:text=>'<a href="http://go.microsoft.com/fwlink/?linkid=66138&amp;clcid=0x409"><img src="iis-85.png" alt="IIS" width="960" height="600" /></a>', :module=>"Under Construction"},
{:text=>'<a href="http://go.microsoft.com/fwlink/?linkid=66138&amp;clcid=0x409"><img src="welcome.png" alt="IIS7" width="571" height="411" /></a>', :module=>"Under Construction"},
{:text=>"<html><head><title>Site Not Found</title></head>.<body>No web site is configured at this address.</body></html>", :module=>"Site Not Found"},
{:text=>'<P ID=Comment1><!--Problem--><P ID="errorText">Under Construction</h1>', :module=>"Under Construction"},
{:text=>'<id id="Comment1"><!--Problem--></id><id id="errorText">Under Construction</id></h1>', :module=>"Under Construction"},
{:text=>'If you are the Web site administrator and feel you have received this message in error, please see &quot;Enabling and Disabling Dynamic Content&quot; in IIS Help.', :module=>"Under Construction"},

{:status=>403, :text=>'<li>Go to <a href="http://go.microsoft.com/fwlink/?linkid=8180">Microsoft Product Support Services</a> and perform a title search for the words <b>HTTP</b> and <b>403</b>.</li>'},
{:status=>404, :text=>'<h1 style="COLOR:000000; FONT: 13pt/15pt verdana"><!--Problem-->The page cannot be found</h1>'},
{:status=>404, :text=>'<li>Go to <a href="http://go.microsoft.com/fwlink/?linkid=8180">Microsoft Product Support Services</a> and perform a title search for the words <b>HTTP</b> and <b>404</b>.</li>'},
{:status=>404, :version=>/<a href="http:\/\/www\.microsoft\.com\/ContentRedirect\.asp\?prd=iis&sbp=&pver=([\d\.]+)&pid=&ID=404&cat=web&os=&over=&hrd=&Opt1=&Opt2=&Opt3=" target="_blank">Microsoft Support<\/a>/},

]
end
