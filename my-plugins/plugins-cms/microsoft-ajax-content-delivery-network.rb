Plugin.define do
name "microsoft-ajax-content-delivery-network"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'ajax.aspnetcdn.com/ajax'},
]
end