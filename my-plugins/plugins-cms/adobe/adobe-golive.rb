Plugin.define do
name "adobe-golive"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :regexp=>/Adobe GoLive(?:\s([\d.]+))?/, :search=>'body'},
{:search=>"all", :text=>'Adobe GoLive'},
{:text=>'generator" content="Adobe GoLive'},
]
end