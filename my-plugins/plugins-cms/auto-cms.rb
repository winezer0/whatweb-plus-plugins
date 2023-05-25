Plugin.define do
name "Auto-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "With Auto CMS you can have a website in 1 minute!, upload the package by FTP to your Hosting, and do click on simbol (*) in the footer, and enjoy of your own website, with the minimal requeriments for your presence on Internet."
website "http://ventics.com/autocms/"
dorks [
'"Powered by Auto CMS"'
]
matches [
{:text=>'<a href="http://www.ventics.com/autocms/" target="_self">Powered by Auto CMS</a>,<a href="http://validator.w3.org/check?uri=referer">Valid XHTML 1.0</a>'},
{:text=>'Powered by Auto CMS'},
{:text=>'content="AutoCMS'},
]
end
