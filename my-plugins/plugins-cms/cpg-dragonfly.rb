Plugin.define do
name "cpg-dragonfly"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/CPG Dragonfly/, :search=>'body'},
{:regexp=>/^Dragonfly CMS/, :search=>'headers[x-powered-by]'},
{:search=>"all", :text=>'CPG Dragonfly'},
]
end