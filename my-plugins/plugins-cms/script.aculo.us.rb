Plugin.define do
name "script.aculo.us" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/.(?:scriptaculous|protoaculous)(?:\.js|.)/, :search=>'body'},
{:search=>"all", :text=>'script.aculo.us'},
]
end