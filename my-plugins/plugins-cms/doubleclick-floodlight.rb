Plugin.define do
name "doubleclick-floodlight"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/https?:..fls\.doubleclick\.net/, :search=>'body'},
{:search=>"all", :text=>'DoubleClick Floodlight'},
]
end