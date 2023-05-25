Plugin.define do
name "actionhero.js"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/actionheroClient\.js/, :search=>'body'},
{:search=>"all", :text=>'actionhero.js'},
{:search=>'headers[x-powered-by]', :regexp=>/actionhero API/},
]
end