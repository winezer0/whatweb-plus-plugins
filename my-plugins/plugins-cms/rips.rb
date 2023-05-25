Plugin.define do
name "rips"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "RIPS - A static source code analyser for vulnerabilities in PHP scripts"
website "http://sourceforge.net/projects/rips-scanner/"
dorks [
'intitle:"RIPS - A static source code analyser for vulnerabilities in PHP scripts" "Quickstart" "Locate your PHP path/file"'
]
matches [
{:text=>'<td nowrap><input type="checkbox" id="subdirs" value="1" title="check to scan subdirectories" />subdirs</td>'},
{:version=>/<div class="logo"><a id="logo" href="http:\/\/sourceforge\.net\/projects\/rips-scanner\/files\/" target="_blank" title="get latest version">([^<^\s]+)<\/a><\/div>/},
]
end
