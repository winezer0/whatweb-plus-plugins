Plugin.define do
name "cakephp" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/CakePHP/, :search=>'body'},
{:search=>"headers", :text=>'CAKEPHP'},
{:url=>"/favicon.ico",:allhash=>"c0533ae5d0ed638ba3fb3485d8250a28"},
]
end