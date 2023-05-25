Plugin.define do
name "neo-omnichannel-commerce-platform"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/jet-neo/, :search=>'headers[powered]'},
{:search=>"all", :text=>'NEO - Omnichannel Commerce Platform'},
]
end