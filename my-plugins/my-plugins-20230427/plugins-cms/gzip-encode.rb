Plugin.define do
name "gzip-encode"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'Content-Encoding: gzip'},
]
end