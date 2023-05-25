Plugin.define do
name "Textpattern"
authors [
"Tonmoy Saikia",
"Andrew Horton",
]
version "0.3"
description "A flexible, elegant and easy-to-use CMS."
website "http://textpattern.com/"
matches [
{:name=>"/textpattern",
:text=>'<td id="view-site" class="tabdown">',
:url=>"/textpattern"},
{:name=>"css.php",
:regexp=>/<link[^>]+href=\"[^"]+textpattern\/css.php[^"]*" \/>/},
{:name=>"generator",
:certainty=>50,
:regexp=>/<meta name=\"generator\"[^>]+content=\"textpattern" \/>/i},
{:name=>"jquery.js",
:regexp=>/<script[^>]+src="[^"]+textpattern\/jquery.js[^"]*">/},
{:search=>"all", :text=>'textpattern'},
]
end