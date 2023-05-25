Plugin.define do
name "twistphp" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'TwistPHP'},
{:search=>'headers[x-powered-by]', :regexp=>/TwistPHP/},
]
end