Plugin.define do
name "smart-ad-server"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<img[^>]+smartadserver\.com\.call/},
{:search=>"all", :text=>'Smart Ad Server'},
]
end