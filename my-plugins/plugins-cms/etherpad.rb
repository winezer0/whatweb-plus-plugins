Plugin.define do
name "etherpad" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/.ep_etherpad-lite./, :search=>'body'},
{:search=>"all", :text=>'Etherpad'},
{:search=>'headers[server]', :regexp=>/^Etherpad/},
{:url=>"/favicon.ico",:allhash=>"fa2b274fab800af436ee688e97da4ac4"},
]
end