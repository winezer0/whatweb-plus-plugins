Plugin.define do
name "komodo-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/^Komodo CMS/, :search=>'body'},
{:search=>"all", :text=>'Komodo CMS'},
]
end