Plugin.define do
name "pligg"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<span[^>]+id="xvotes-0/},
{:search=>'body', :regexp=>/Pligg/},
{:url=>"/favicon.ico",:allhash=>"83a1fd57a1e1684fafd6d2487290fdf5"},
]
end