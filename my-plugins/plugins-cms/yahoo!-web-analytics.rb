Plugin.define do
name "yahoo!-web-analytics"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'Yahoo! Web Analytics'},
{:search=>'body', :regexp=>/d\.yimg\.com.mi.ywa\.js/},
]
end