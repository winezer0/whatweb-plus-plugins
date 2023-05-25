Plugin.define do
name "infonline"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/^https?:..(?:[^.]+\.)?i(?:oam|v)wbox\.de./, :search=>'body'},
{:search=>"all", :text=>'INFOnline'},
]
end