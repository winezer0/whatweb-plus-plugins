Plugin.define do
name "armor-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'armor'},
{:text=>'blocked by website protection from armour'},
]
end