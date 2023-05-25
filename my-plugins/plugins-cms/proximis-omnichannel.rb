Plugin.define do
name "proximis-omnichannel"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<html[^>]+data-ng-app="RbsChangeApp/},
{:search=>"all", :text=>'Proximis Omnichannel'},
{:search=>'body', :regexp=>/Proximis Omnichannel/},
]
end