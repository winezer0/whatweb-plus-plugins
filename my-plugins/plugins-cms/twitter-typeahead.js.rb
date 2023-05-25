Plugin.define do
name "twitter-typeahead.js"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/(?:typeahead|bloodhound)\.(?:jquery|bundle)?(?:\.min)?\.js/, :search=>'body'},
{:search=>"all", :text=>'Twitter typeahead.js'},
]
end