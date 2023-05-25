Plugin.define do
name "store-systems"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/Shopsystem von <a href=[^>]+store-systems\.de/},
{:search=>"all", :text=>'Store Systems'},
]
end