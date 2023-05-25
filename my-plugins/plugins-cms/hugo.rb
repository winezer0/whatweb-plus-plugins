Plugin.define do
name "hugo" 
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :regexp=>/Hugo ([\d.]+)?/, :search=>'body'},
{:regexp=>/powered by <a [^>]*href="http:..hugo\.spf13\.com/},
]
end