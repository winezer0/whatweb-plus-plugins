Plugin.define do
name "tiki-wiki-cms-groupware"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/^Tiki/, :search=>'body'},
{:search=>"all", :text=>'Tiki Wiki CMS Groupware'},
{:search=>'body', :regexp=>/(?:.|_)tiki/},
]
end