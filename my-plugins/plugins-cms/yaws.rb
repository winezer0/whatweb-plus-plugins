Plugin.define do
name "yaws"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'headers[server]',:offset=>1, :regexp=>/Yaws(?: ([\d.]+))?/},
{:url=>"/favicon.ico",:allhash=>"81feac35654318fb16d1a567b8b941e7"},
]
end