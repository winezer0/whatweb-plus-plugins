Plugin.define do
name "拓尔思WCMv7-6"
authors [
"winezero",

]
version "0.1"
matches [
{:serach=>'headers', :text=>'com.trs.idm.coSessionId'},
]
end