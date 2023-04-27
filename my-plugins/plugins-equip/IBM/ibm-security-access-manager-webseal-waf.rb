Plugin.define do
name "ibm-security-access-manager-webseal-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'WebSEAL'},
{:text=>'The Access Manager WebSEAL server received an invalid HTTP request'},
{:text=>'This is a WebSEAL error message template file'},
{:text=>'webseal error message template'},
{:text=>'webseal server received an invalid http request'},
]
end