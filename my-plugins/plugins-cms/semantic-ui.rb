Plugin.define do
name "semantic-ui"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :regexp=>/.semantic(?:-([\d.]+))?(?:\.min)?\.js/, :search=>'body'},
{:regexp=>/<link[^>]+semantic(?:\.min)\.css/},
{:search=>"all", :text=>'Semantic-ui'},
]
end