Plugin.define do
name "f5-bigip"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'BIGipServer'},
{:search=>"headers", :text=>'X-PvInfo'},
{:search=>"headers", :text=>'X-WA-Info'},
{:search=>'headers[server]', :regexp=>/^big-?ip$/},
]
end