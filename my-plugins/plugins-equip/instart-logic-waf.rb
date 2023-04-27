Plugin.define do
name "instart-logic-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'X-Instart-CacheKeyMod'},
{:search=>'headers', :text=>'X-Instart-Request-ID'},
{:text=>'instartrequestid'},
]
end