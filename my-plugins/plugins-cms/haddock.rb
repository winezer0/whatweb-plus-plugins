Plugin.define do
name "haddock" 
authors [
"winezero",

]
version "0.1"
matches [
{:offset=>1, :regexp=>/<p>Produced by <a href="http:..www\.haskell\.org.haddock.">Haddock<.a> version ([0-9.]+)<.p>/},
{:search=>'body', :regexp=>/haddock-util\.js/},
]
end