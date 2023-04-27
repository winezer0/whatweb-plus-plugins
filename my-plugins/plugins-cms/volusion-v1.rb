Plugin.define do
name "volusion-v1"
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :regexp=>/.volusion\.js(?:\?([\d.]*))?/, :search=>'body'},
{:regexp=>/<link [^>]*href="[^"]*.vspfiles./},
{:search=>"all", :text=>'Volusion (V1)'},
]
end