Plugin.define do
name "auth0-lock"
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :search=>'body', :regexp=>/.lock.([\d.]+).lock(?:.min)?\.js/},
]
end