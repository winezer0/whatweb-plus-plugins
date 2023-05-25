Plugin.define do
name "microsoft-advertising"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>'body', :regexp=>/bat\.bing\.com.bat\.js/},
]
end