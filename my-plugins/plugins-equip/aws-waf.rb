Plugin.define do
name "aws-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'headers', :text=>'awselb'},
]
end