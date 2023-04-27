Plugin.define do
name "coinhive" 
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/\.(?:coinhive|(authedmine))(?:\.min)?\.js/},
{:regexp=>/coinhive\.com.lib/, :search=>'body'},
{:search=>"all", :text=>'CoinHive'},
]
end