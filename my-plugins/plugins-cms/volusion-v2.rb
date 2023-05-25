Plugin.define do
name "volusion-v2"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<body [^>]*data-vn-page-name/},
{:search=>"all", :text=>'Volusion (V2)'},
]
end