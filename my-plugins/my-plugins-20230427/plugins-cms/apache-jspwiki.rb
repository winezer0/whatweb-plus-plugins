Plugin.define do
name "apache-jspwiki"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<html[^>]* xmlns:jspwiki=/},
{:regexp=>/jspwiki/, :search=>'body'},
{:search=>"all", :text=>'Apache JSPWiki'},
]
end