Plugin.define do
name "hiawatha" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Hiawatha'},
{:search=>'headers[server]', :regexp=>/Hiawatha v([\d.]+)/,:offset=>1},
]
end