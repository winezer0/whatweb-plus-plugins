Plugin.define do
name "contensis"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/Contensis CMS Version ([\d.]+)/, :search=>'body',:offset=>1},
{:search=>"all", :text=>'Contensis'},
]
end