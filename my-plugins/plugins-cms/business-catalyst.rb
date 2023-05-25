Plugin.define do
name "business-catalyst"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<!-- BC_OBNW -->/},
{:regexp=>/CatalystScripts/, :search=>'body'},
{:search=>"all", :text=>'Business Catalyst'},
]
end