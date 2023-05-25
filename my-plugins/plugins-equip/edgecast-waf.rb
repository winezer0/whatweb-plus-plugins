Plugin.define do
name "edgecast-waf"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'headers', :text=>'SERVER'},
{:status=>'400', :search=>'headers', :text=>'ECDF'},
]
end