Plugin.define do
name "Minify"
authors [
"Andrew Horton",

]
version "0.1"
description "Minify is a PHP5 app that can combine multiple CSS or Javascript files, compress their contents (i.e. removal of unnecessary whitespace/comments), and serve the results with HTTP encoding (gzip/deflate) and headers that allow optimal client-side caching. It uses an enhanced port of Douglas Crockford's JSMin library.  http://code.google.com/p/minify/"
matches [
{:name=>"script tag /min/g=",
:certainty=>75,
:regexp=>/<script[^>]+src=["'][^>]*\/min\/g=[^>]+["']/},
{:name=>"script tag /min/js?",
:certainty=>75,
:regexp=>/<script[^>]+src=["'][^>]*\/min\/js\?[^>]+["']/},
{:name=>"script tag minify.php",
:regexp=>/<script[^>]+src=["'][^>]+\/minify.php\?[a-z]+=[^>]+["']/},
]
end
