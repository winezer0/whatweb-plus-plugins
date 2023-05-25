Plugin.define do
name "moxa-nport-5150a"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'MoxaHttp'},
{:text=>'NPort Web Console'},
]
end