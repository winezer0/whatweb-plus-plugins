Plugin.define do
name "nginx-generic-protection-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'nginx'},
{:text=>'you don\'t have permission to access this document'},
{:text=>'you donot have permission to access this document'},
]
end