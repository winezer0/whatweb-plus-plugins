Plugin.define do
name "vue.js"
authors [
"winezero",
]

version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/vue[.-]([\d.]*\d)[^.]*\.js/},
{:regexp=>/(?:.([\d.]+))?.vue(?:\.min)?\.js/,:offset=>1, :search=>'body'},
{:regexp=>/<[^>]+\sdata-v(?:ue)?-/},
{:text=>'vue.js'},
{:mmh3=>'-1252041730'},
{:mmh3=>'-1237480336'},
]
end