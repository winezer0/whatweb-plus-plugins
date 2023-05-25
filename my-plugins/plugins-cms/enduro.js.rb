Plugin.define do
name "enduro.js" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'enduro.js'},
{:search=>'headers[x-powered-by]', :regexp=>/^enduro\.js/},
]
end