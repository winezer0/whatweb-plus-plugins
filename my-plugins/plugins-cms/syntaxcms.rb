Plugin.define do
name "syntaxCMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SyntaxCMS simplifies publishing various types of content to a site, facilitates creating and managing arbitrary relationships among content items, automates and accelerates custom development, and encourages reuse of site components with other SyntaxCMS installations. It is built using PHP and MySQL and is licensed under the Common Public License. "
website "http://www.syntaxcms.org/"
dorks [
'"powered by syntaxCMS"'
]
matches [
{:text=>'Powered by <a href="http://www.syntaxcms.org">SyntaxCMS</a></div>'},
{:text=>'powered by <a href="http://www.syntaxcms.org/" title="SyntaxCMS">SyntaxCMS</a></div>'},
]
end
