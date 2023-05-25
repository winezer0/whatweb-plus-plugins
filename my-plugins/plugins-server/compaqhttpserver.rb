Plugin.define do
name "compaqhttpserver"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'CompaqHTTPServer'},
{:search=>'headers[server]', :regexp=>/CompaqHTTPServer\.?([\d\.]+)?/,:offset=>1},
]
end