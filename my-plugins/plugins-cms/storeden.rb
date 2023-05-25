Plugin.define do
name "storeden" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Storeden'},
{:search=>'headers[x-powered-by]', :regexp=>/Storeden/},
]
end