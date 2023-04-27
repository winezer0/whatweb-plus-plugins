Plugin.define do
name "opentext-web-solutions"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<!--[^>]+published by Open Text Web Solutions/},
{:search=>"all", :text=>'OpenText Web Solutions'},
]
end