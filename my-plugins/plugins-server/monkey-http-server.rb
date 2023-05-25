Plugin.define do
name "monkey-http-server"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Monkey HTTP Server'},
{:search=>'headers[server]',:offset=>1, :regexp=>/Monkey.?([\d.]+)?/},
]
end