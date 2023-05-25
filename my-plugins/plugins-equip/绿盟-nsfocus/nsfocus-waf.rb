Plugin.define do
name "nsfocus-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'NSFOCUS WAF'},
{:search=>'headers', :text=>'NSFocus'},
{:text=>'/images/logo/nsfocus.png'},
{:text=>'WAF NSFOCUS'},
]
end