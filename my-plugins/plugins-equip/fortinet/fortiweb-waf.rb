Plugin.define do
name "fortiweb-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'FORTIWAFSID='},
{:search=>'headers', :text=>'FortiWeb'},
]
end