Plugin.define do
name "oracle-web-cache"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Oracle Web Cache'},
{:search=>'headers[server]',:offset=>1, :regexp=>/Oracle(?:AS)?[- ]Web[- ]Cache(?:[- .]([\da-z..]+))?/},
]
end