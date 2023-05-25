Plugin.define do
name "ats-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'apachetrafficserver'},
{:search=>'headers', :text=>'ats/'},
]
end