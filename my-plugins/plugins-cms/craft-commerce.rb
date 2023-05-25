Plugin.define do
name "craft-commerce"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/\bCraft Commerce\b/, :search=>'headers[x-powered-by]'},
{:search=>"all", :text=>'Craft Commerce'},
]
end