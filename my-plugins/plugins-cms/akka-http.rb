Plugin.define do
name "akka-http"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Akka HTTP'},
{:search=>'headers[server]', :regexp=>/akka-http(?:.([\d.]+))?/,:offset=>1},
]
end