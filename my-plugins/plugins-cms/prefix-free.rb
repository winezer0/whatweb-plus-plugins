Plugin.define do
name "prefix-free" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/prefixfree\.js/, :search=>'body'},
{:search=>"all", :text=>'Prefix-Free'},
]
end