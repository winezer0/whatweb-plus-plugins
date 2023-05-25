Plugin.define do
name "dreambox-tv-reciever"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'Basic realm="dreambox'},
]
end