Plugin.define do
name "upupw-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'-upupw'},
{:text=>'<title>UPUPW WARNING</title>'},
]
end