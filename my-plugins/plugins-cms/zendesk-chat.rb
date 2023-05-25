Plugin.define do
name "zendesk-chat"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Zendesk Chat'},
{:search=>'body', :regexp=>/v2\.zopim\.com/},
]
end