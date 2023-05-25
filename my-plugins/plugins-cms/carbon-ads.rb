Plugin.define do
name "carbon-ads"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<[a-z]+ [^>]*id="carbonads-container/},
{:search=>"all", :text=>'Carbon Ads'},
{:search=>'body', :regexp=>/carbonads\.com/},
]
end