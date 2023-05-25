Plugin.define do
name "winstone-servlet-container"
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :regexp=>/Winstone(?:\.([\d.]+))?/, :search=>'headers[x-powered-by]'},
{:search=>"all", :text=>'Winstone Servlet Container'},
{:search=>'headers[server]', :regexp=>/Winstone Servlet (?:Container|Engine) v?([\d.]+)?/,:offset=>1},
]
end