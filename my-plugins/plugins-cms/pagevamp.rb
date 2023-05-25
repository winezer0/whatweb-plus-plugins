Plugin.define do
name "pagevamp"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Pagevamp'},
{:search=>'headers[x-servedby]', :regexp=>/pagevamp/},
]
end