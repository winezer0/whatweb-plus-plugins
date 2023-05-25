Plugin.define do
name "mikrotik-router"
authors [
"Andrew Horton",

]
version "0.4"
description "MikroTik router"
website "http://www.mikrotik.com"
dorks [
'intitle:"mikrotik routeros > administration" "Winbox is the graphical configuration application for RouterOS."'
]
matches [
{:md5=>"bacf8a0c6f3e702db9be393989b2a0b5", :name=>"401 page"},
{:search=>"all", :text=>'mikrotik_router'},
{:text=>"<title>mikrotik routeros > administration</title>"},
{:url=>'', :text=>'mikrotik'},
{:version=>/<div class="top">mikrotik routeros ([^ ]+) configuration page</,  :name=>"mikrotik routeros ([^ ]+) configuration page"},
]
end
