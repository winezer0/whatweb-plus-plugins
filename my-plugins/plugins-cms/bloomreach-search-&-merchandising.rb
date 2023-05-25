Plugin.define do
name "bloomreach-search-&-merchandising"
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/cdn\.brcdn\.com.v([\d.]+)/},
{:offset=>1, :search=>'body', :regexp=>/cdns\.brsrvr\.com.v([\d.]+)/},
]
end