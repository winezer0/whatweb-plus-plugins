Plugin.define do
name "elog-http"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'ELOG HTTP'},
{:search=>'headers[server]',:offset=>1, :regexp=>/ELOG HTTP ?([\d.-]+)?/},
]
end