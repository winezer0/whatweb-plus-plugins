Plugin.define do
name "Textpattern-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A flexible, elegant and easy-to-use CMS"
website "http://textpattern.com/"
matches [
{:regexp=>/Powered by <a href="http:\/\/textpattern.com[\/]*">Textpattern CMS<\/a>/i},
{:regexp=>/Textpattern/, :search=>'body'},
{:search=>"all", :text=>'Textpattern CMS'},
{:text=>"Powered by <a href='http://textpattern.com/' title='The Content Management System'>Textpattern CMS</a>"},
{:text=>'Powered by <a href="http://textpattern.com/" title="A flexible, elegant and easy-to-use content management system.">Textpattern CMS</a>'},
{:text=>'Powered by <a href="http://textpattern.com/" title="Textpattern Open Source Content Management System">Textpattern CMS</a>'},
{:text=>'Powered by <a href="http://textpattern.com/" title="Textpattern, an Open Source Content Management System">Textpattern CMS</a>'},
{:text=>'powered by <a href="http://textpattern.com">textpattern</a> cms'},
]
end
