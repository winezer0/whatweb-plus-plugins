Plugin.define do
name "sivuviidakko"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/Sivuviidakko/, :search=>'body'},
{:search=>"all", :text=>'Sivuviidakko'},
]
end