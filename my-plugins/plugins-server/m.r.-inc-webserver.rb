Plugin.define do
name "m.r.-inc-webserver"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'M.R. Inc Webserver'},
{:search=>'headers[server]', :regexp=>/M\.R\. Inc Webserver/},
]
end