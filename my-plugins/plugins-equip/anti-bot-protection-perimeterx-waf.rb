Plugin.define do
name "anti-bot-protection-perimeterx-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:text=>'access to this page has been denied because we believe you are using automation tool'},
{:text=>'client perimeterx'},
]
end