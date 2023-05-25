Plugin.define do
name "slimbox-2"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<link [^>]*href="[^.]*slimbox2(?:-rtl)?\.css/},
{:regexp=>/slimbox2\.js/, :search=>'body'},
{:search=>"all", :text=>'Slimbox 2'},
]
end