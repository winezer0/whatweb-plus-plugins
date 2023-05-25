Plugin.define do
name "jsf" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'JSF/'},
{:search=>"headers", :text=>"X-Powered-By: JSF"},

]
end