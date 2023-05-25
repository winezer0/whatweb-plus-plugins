Plugin.define do
name "outbrain"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Outbrain'},
{:search=>'body', :regexp=>/widgets\.outbrain\.com.outbrain\.js/},
]
end