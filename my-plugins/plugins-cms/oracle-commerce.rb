Plugin.define do
name "oracle-commerce"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Oracle Commerce'},
{:search=>'headers[x-atg-version]',:offset=>1, :regexp=>/(?:ATGPlatform.([\d.]+))?/},
]
end