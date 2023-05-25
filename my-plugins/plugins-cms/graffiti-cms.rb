Plugin.define do
name "graffiti-cms"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/Graffiti CMS ([^"]+)/},
{:regexp=>/.graffiti\.js/, :search=>'body'},
{:search=>"all", :text=>'Graffiti CMS'},
]
end