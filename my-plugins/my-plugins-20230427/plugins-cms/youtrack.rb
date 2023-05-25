Plugin.define do
name "youtrack" 
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :regexp=>/data-reactid="[^"]+">youTrack ([0-9.]+)</},
{:regexp=>/no-title="YouTrack">/},
{:regexp=>/type="application.opensearchdescription\+xml" title="YouTrack".>/},
{:search=>"all", :text=>'YouTrack'},
]
end