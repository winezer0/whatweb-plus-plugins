Plugin.define do
name "crossbox" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'CrossBox'},
{:search=>'headers[server]', :regexp=>/CBX-WS/},
]
end