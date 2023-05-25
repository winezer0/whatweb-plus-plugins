Plugin.define do
name "apostrophe-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<[^>]+data-apos-refreshable[^>]/},
{:search=>"all", :text=>'apostrophe CMS'},
]
end