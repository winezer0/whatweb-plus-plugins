Plugin.define do
name "mynetcap"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/Mynetcap/, :search=>'body'},
{:search=>"all", :text=>'Mynetcap'},
]
end