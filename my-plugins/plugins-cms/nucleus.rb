Plugin.define do
name "Nucleus"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Nucleus Webserver"
passive do
m=[]
m << { :version=>@headers["server"].to_s.scan(/^[\s]*Nucleus\/([^\s^\r^\n]+)/i).flatten } if @headers["server"].to_s =~ /^[\s]*Nucleus\/([^\s^\r^\n]+)/i
m
end
matches [
{:filepath=>/<td>Admin-area <strong>path<\/strong>:<\/td>[\s]+<td><input name="AdminPath" size="60" value="([^"]+)" \/>/},
{:search=>"all", :text=>'Nucleus CMS'},
{:text=>'<meta name="name" content="My Nucleus CMS" />'},
{:version=>/<meta name="generator" content="Nucleus CMS v([^"^>]+)" \/>/},
{:version=>/<small>Copyright \| <a href="http:\/\/nucleuscms\.org">Nucleus CMS v([^\s^>]+)<\/a> \|/},
]
end