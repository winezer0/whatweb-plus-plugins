Plugin.define do
name "hcaptcha"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/https:..hcaptcha.com.([\d]+?).api.js/},
{:regexp=>/<style[^>]+[^<]+#cf-hcaptcha-container[^<]+<.style>/},
]
end