Plugin.define do
name "rakuten-dbcore"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/Rakuten DBCore/, :search=>'body'},
{:regexp=>/http:..ecservice\.rakuten\.com\.br/, :search=>'body'},
{:search=>"all", :text=>'Rakuten DBCore'},
]
end