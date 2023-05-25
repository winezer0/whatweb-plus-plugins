Plugin.define do
name "bloomreach"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<[^>]+.binaries.(?:[^.]+.)*content.gallery./},
{:search=>"all", :text=>'Bloomreach'},
]
end