Plugin.define do
name "denyall-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'Condition Intercepted'},
{:search=>'headers', :text=>'sessioncookie'},
]
end