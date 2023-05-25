Plugin.define do
name "isp-config"
authors [
"Andrew Horton",
]
version "0.3"
description "ISPConfig is a free, opensource hosting control panel"
website "http://www.ispconfig.org/"
dorks [
'powered by ISPConfig'
]
matches [
{:certainty=>75, :text=>'This IP address is shared. For access to the web site which you look for, enter its address instead of its IP.'},
{:regexp=>/powered by <a HREF="http:\/\/www.ispconfig.org">ISPConfig<\/a>/i},
]
end