Plugin.define do
name "websecurity-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Websecurity: WAF 1.0'},
]
end