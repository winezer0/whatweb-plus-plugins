Plugin.define do
name "jekyll" 
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :regexp=>/Jekyll (v[\d.]+)?/, :search=>'body'},
{:regexp=>/<!-- Begin Jekyll SEO tag/},
{:regexp=>/<!-- Created with Jekyll Now -/},
{:regexp=>/Powered by <a href="https?:..jekyllrb\.com"[^>]*>Jekyll<./},
]
end