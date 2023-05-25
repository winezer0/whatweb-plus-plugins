Plugin.define do
name "livefyre"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<[^>]+(?:id|class)="livefyre/},
{:search=>"all", :text=>'Livefyre'},
{:search=>'body', :regexp=>/livefyre_init\.js/},
]
end