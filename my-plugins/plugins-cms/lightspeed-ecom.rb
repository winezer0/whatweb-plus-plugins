Plugin.define do
name "lightspeed-ecom"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<!-- \[START\] 'blocks.head\.rain' -->/},
{:search=>"all", :text=>'Lightspeed eCom'},
{:search=>'body', :regexp=>/http:..assets\.webshopapp\.com/},
]
end