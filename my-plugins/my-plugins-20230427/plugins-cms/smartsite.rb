Plugin.define do
name "smartsite" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<[^>]+.smartsite\.(?:dws|shtml)\?id=/},
{:search=>"all", :text=>'SmartSite'},
{:search=>'body', :regexp=>/Redacteur SmartInstant/},
]
end