Plugin.define do
name "vsns-lemon"
authors [
"Andrew Horton",

]
version "0.3"
description "VSNS is a Very Simple News System written in PHP. VSNS Lemon vulnerabilities: http://evuln.com/vulns/106/summary.html"
matches [
{:certainty=>50, :regexp=>/<div id="vsns-(inner|container)">/},
{:ghdb=>'"Powered by Vsns Lemon" intitle:"Vsns Lemon"'},
{:regexp=>/<a[^>]+title="Blog powered by VSNS Lemon">/},
{:regexp=>/<img[^>]+alt="VSNS Lemon"[^>]+title="Blog powered by VSNS Lemon"/},
{:text=>'<p>Powered by <abbr title="very simple news system">'},
{:version=>/<p>Powered by <abbr title="very simple news system">VSNS<\/abbr> (Lemon) ([0-9.a-z]*) by <a href="http:\/\/tachyondecay.net\/">Tachyon<\/a>/, :offset=>1,  :name=>"powered by link"},
]
end
