Plugin.define do
name "appwall-radware"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'AppWall'},
{:search=>"headers", :text=>'X-SL-CompState'},
]
end