Plugin.define do
name "solve-media"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/^https?:..api\.solvemedia\.com./, :search=>'body'},
{:search=>"all", :text=>'Solve Media'},
]
end