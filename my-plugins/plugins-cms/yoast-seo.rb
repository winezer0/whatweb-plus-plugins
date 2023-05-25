Plugin.define do
name "yoast-seo"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<!-- This site is optimized with the Yoast (?:WordPress )?SEO plugin v([\d.]+) -/,:offset=>1},
{:search=>"all", :text=>'Yoast SEO'},
]
end