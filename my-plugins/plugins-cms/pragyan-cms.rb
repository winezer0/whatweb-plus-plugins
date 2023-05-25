Plugin.define do
name "Pragyan-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A simple and fast multiuser content management system to organize collaborative web-content. This CMS allows very fine user&group permissions, generating pages like articles, forms, quizzes, forums, etc, search powered by sphider."
website "http://sourceforge.net/projects/pragyan/"
dorks [
'"powered by Pragyan CMS"'
]
matches [
{:text=>'powered by <a href="http://sourceforge.net/projects/pragyan">Pragyan CMS</a>'},
{:version=>/powered by <a href="http:\/\/sourceforge.net\/projects\/pragyan" title="(Praygan|Probe) CMS">Pragyan CMS v([\d\.]+)<\/a>/, :offset=>1 },
]
end
