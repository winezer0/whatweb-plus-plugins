Plugin.define do
name "Nabble"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Freed embeddable web apps"
website "http://www.nabble.com/"
dorks [
'"powered by Nabble"'
]
matches [
{:text=>'<div class="nabble" id="nabble">'},
{:text=>'<table class="footer-table shaded-bg-color">'},
{:text=>'Powered by <a href="http://www.nabble.com/" target="_top" title="Free forum and other embeddable web apps">Nabble</a>'},
]
end
