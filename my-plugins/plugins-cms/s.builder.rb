Plugin.define do
name "s.builder"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/S\.Builder/, :search=>'body'},
{:search=>"all", :text=>'S.Builder'},
]
end