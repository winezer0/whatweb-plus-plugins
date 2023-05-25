Plugin.define do
name "Constructr-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ConstructrCMS is a new and fresh Content Management System build with the Power of PHP and MySQL. The Backend is mostly controlled by Ajax for a unique User Experience."
website "http://www.constructr-cms.org/"
matches [
{:text=>'<br /><br />Constructr CMS - developed by <a href="http://phaziz.com/constructr-cms/" onclick="window.open(this.href);return false;">phaziz interface design</a>'},
{:text=>'<html><head><title>Constructr CMS</title><body><p>Sorry, no Workspace-Template found!</p><p>Visit <a href="http://constructr.phaziz.com">http://constructr.phaziz.com</a> for further Information.</p></body></head>'},
]
end
