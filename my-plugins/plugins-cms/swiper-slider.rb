Plugin.define do
name "swiper-slider"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<[^>]+=swiper-container/},
{:regexp=>/swiper(?:\.min)?\.js/, :search=>'body'},
{:search=>"all", :text=>'Swiper Slider'},
]
end