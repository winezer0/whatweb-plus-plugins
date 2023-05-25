Plugin.define do
name "robots.txt"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.3"
description "This plugin identifies robots.txt files and extracts both allowed and disallowed directories. - More Info: http://www.robotstxt.org/"
passive do
m=[]
if @base_uri.path == "/robots.txt" and @body =~ /^User-agent:/i
m << { :name=>"File Exists" }
if @body =~ /^Disallow:[\s]*(.+)$/i
m << { :string=>@body.scan(/^Disallow:[\s]*(.+)/i) }
end
if @body =~ /^Allow:[\s]*(.+)$/i
m << { :string=>@body.scan(/^Allow:[\s]*(.+)/i) }
end
end
m
end
matches [
{:text=>'<td nowrap><input type="checkbox" id="subdirs" value="1" title="check to scan subdirectories" />subdirs</td>'},
{:version=>/<div class="logo"><a id="logo" href="http:\/\/sourceforge\.net\/projects\/rips-scanner\/files\/" target="_blank" title="get latest version">([^<^\s]+)<\/a><\/div>/},
]
end