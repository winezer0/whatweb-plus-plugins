Plugin.define do
name "vigor-router"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Vigor router"
website "http://www.draytek.com/user/PdInfoDetail.php?Id=20"
matches [
{:mmh3=>'104189364'},
{:search=>"headers[server]", :model=>/^(VigorAccess) Web Server$/},
{:search=>"headers[www-authenticate]", :model=>/^Basic realm="(Login to )?Vigor ([\d]+)"$/, :offset=>1 },
]
end
