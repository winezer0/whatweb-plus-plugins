Plugin.define do
name "open-journal-systems"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/Open Journal Systems(?: ([\d.]+))?/,:offset=>1, :search=>'body'},
{:search=>"all", :text=>'Open Journal Systems'},
]
end