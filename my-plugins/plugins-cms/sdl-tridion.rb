Plugin.define do
name "sdl-tridion"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<img[^>]+_tcm\d{2,3}-\d{6}\./},
{:search=>"all", :text=>'SDL Tridion'},
]
end