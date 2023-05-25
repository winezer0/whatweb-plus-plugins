Plugin.define do
name "basehttp"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'BaseHTTP'},
{:search=>'headers[server]', :regexp=>/BaseHTTP\.?([\d\.]+)?/,:offset=>1},
]
end