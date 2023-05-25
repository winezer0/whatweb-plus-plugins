Plugin.define do
name "mediatomb"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'MediaTomb'},
{:search=>'headers[server]', :regexp=>/MediaTomb(?:.([\d.]+))?/,:offset=>1},
{:url=>"/favicon.ico",:allhash=>"f972c37bf444fb1925a2c97812e2c1eb"},
]
end