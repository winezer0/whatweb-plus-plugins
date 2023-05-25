Plugin.define do
name "tengine"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/If you see this page, the tengine web server is successfully installed and/},
{:search=>"header",:regexp=>/Server: Tengine.*/},
{:search=>"headers", :text=>'Server: Tengine'},
{:search=>'headers[server]', :regexp=>/Tengine/},
{:url=>"/favicon.ico",:allhash=>"88717398db158e3330ce94fc1784e4a7"},
]
end