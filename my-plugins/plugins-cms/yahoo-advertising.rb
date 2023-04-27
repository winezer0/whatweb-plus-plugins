Plugin.define do
name "yahoo-advertising"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<iframe[^>]+adserver\.yahoo\.com/},
{:regexp=>/<img[^>]+clicks\.beap\.bc\.yahoo\.com/},
{:regexp=>/adinterax\.com/, :search=>'body'},
{:search=>"all", :text=>'Yahoo Advertising'},
]
end