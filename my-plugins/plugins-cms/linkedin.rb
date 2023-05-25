Plugin.define do
name "linkedin"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/..platform\.linkedin\.com.in\.js/, :search=>'body'},
{:search=>"all", :text=>'Linkedin'},
]
end