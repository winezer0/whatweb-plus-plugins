Plugin.define do
name "evslide"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :regexp=>/<link[^>]* href=[\'"][^']+revslider[.\w-]+\.css\?ver=([0-9.]+)[\'"]/},
{:search=>"all", :text=>'Revslider'},
{:search=>'body', :regexp=>/.revslider.[.\w-]+.js/},
]
end