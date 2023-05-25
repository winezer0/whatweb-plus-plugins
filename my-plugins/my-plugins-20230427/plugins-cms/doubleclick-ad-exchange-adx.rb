Plugin.define do
name "doubleclick-ad-exchange-adx"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/tpc\.googlesyndication\.com.safeframe/, :search=>'body'},
{:search=>"all", :text=>'DoubleClick Ad Exchange (AdX)'},
{:search=>'body', :regexp=>/googlesyndication\.com.*abg\.js/},
{:search=>'body', :regexp=>/googlesyndication\.com.pagead.show_ads\.js/},
]
end