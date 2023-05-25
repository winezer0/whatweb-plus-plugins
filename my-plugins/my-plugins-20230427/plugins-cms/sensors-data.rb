Plugin.define do
name "sensors-data"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'Sensors Data'},
{:search=>'body', :regexp=>/sensorsdata/},
]
end