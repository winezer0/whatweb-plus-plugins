Plugin.define do
name "mojolicious" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/mojolicious/, :search=>'headers[x-powered-by]'},
{:search=>"all", :text=>'Mojolicious'},
{:search=>'headers[server]', :regexp=>/^mojolicious/},
]
end