Plugin.define do
name "salesforce-service-cloud"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'body', :regexp=>/service\.force\.com/},
]
end