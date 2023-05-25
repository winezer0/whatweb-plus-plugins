Plugin.define do
name "intercom"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Intercom'},
{:search=>'body', :regexp=>/(?:api\.intercom\.io.api|static\.intercomcdn\.com.intercom\.v1)/},
]
end