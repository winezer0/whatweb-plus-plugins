Plugin.define do
name "logitech-media-server"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Logitech Media Server'},
{:search=>'headers[server]',:offset=>1, :regexp=>/Logitech Media Server(?: \(([\d\.]+))?/},
]
end