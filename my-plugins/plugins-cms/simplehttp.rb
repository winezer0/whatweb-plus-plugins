Plugin.define do
name "simplehttp" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'SimpleHTTP'},
{:search=>'headers[server]',:offset=>1, :regexp=>/SimpleHTTP(?:.([\d.]+))?/},
]
end