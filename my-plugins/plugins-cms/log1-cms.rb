Plugin.define do
name "Log1-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Idea of this CMS is simplicity and fast web development with no data base. Using log1CMS you can create one leveled-menu web page in 5 simple steps. Create menu using drag and drop feature and then edit files with TinyMCE WYSWIG editor."
website "http://log1cms.sourceforge.net/"
dorks [
'"POWERED BY LOG1 CMS" -dork'
]
matches [
{:text=>'<!-- please do not deleate info below, thank you -->'},
{:text=>'<img src="engine/images/logo.gif" alt="log1 CMS logo"/>'},
{:text=>'<link href="engine/styles/login.css.php" rel="stylesheet" type="text/css" />'},
{:text=>'<meta http-equiv="Generator" content="log1_cms" />'},
{:text=>'<p>Powered by <a href="http://log1cms.sourceforge.net" target="_blank"> Log1 CMS</a></p>'},
{:text=>'<title>log1 cms: Login as Admin to</title>'},
]
end
