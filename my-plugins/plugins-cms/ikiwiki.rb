Plugin.define do
name "ikiwiki" 
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<a href=".(?:cgi-bin.)?ikiwiki\.cgi\?do=/},
{:regexp=>/<link rel="alternate" type="application.x-wiki" title="Edit this page" href="[^"]*.ikiwiki\.cgi/},
{:url=>"/favicon.ico",:allhash=>"32bf63ac2d3cfe82425ce8836c9ce87c"},
]
end