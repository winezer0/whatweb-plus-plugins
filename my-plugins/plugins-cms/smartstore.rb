Plugin.define do
name "smartstore" 
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>2, :regexp=>/^Smart[sS]tore(.NET)? (.+)$/, :search=>'body'},
{:regexp=>/<!--Powered by Smart[sS]tore/},
{:regexp=>/<meta property="sm:pagedata/},
{:search=>"all", :text=>'Smartstore'},
]
end