Plugin.define do
name "appnexus"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<(?:iframe|img)[^>]+adnxs\.(?:net|com)/},
{:search=>"all", :text=>'AppNexus'},
{:search=>'body', :regexp=>/adnxs\.(?:net|com)/},
]
end