Plugin.define do
name "melis-platform"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<!-- Rendered with Melis CMS V2/},
{:regexp=>/<!-- Rendered with Melis Platform/},
{:search=>'body', :regexp=>/^Melis CMS\./},
{:search=>'body', :regexp=>/^Melis Platform\./},
]
end