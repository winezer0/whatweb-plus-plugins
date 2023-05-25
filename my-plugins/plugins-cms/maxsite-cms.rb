Plugin.define do
name "maxsite-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/MaxSite CMS/, :search=>'body'},
{:search=>"all", :text=>'MaxSite CMS'},
]
end