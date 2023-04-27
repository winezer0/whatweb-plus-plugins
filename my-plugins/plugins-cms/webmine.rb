Plugin.define do
name "webmine" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<iframe[^>]+src=[\'"]https:..webmine\.cz.miner\?key=/},
{:text=>'Login to Webmin'},
{:text=>'Webmin server on'},
]
end