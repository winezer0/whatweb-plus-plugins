Plugin.define do
name "siteedit"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/SiteEdit/, :search=>'body'},
{:search=>"all", :text=>'SiteEdit'},
]
end