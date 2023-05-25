Plugin.define do
name "owl-carousel"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<link [^>]*href="[^"]+owl\.carousel(?:\.min)?\.css/},
{:search=>"all", :text=>'OWL Carousel'},
{:search=>'body', :regexp=>/owl\.carousel.*\.js/},
]
end