Plugin.define do
name "miniserv" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'MiniServ'},
{:search=>'headers[server]',:offset=>1, :regexp=>/MiniServ\.?([\d\.]+)?/},
]
end