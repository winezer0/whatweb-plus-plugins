Plugin.define do
name "barts-cms"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Bart's CMS is a website Content Management System that is build with Codecharge Studio."
website "http://trinityhome.org/"
dorks [
'"powered by Bart\'s CMS"'
]
matches [
{:certainty=>75, :text=>'<meta name="author" content="Bart Verstricht" />'},
{:version=>/<meta name="generator" content="Bart's CMS \[Business Edition\] ([\d\.]{1,10}) [Stable][^>]*">/},
{:version=>/Powered by <a style="color:#ccc;" href="http:\/\/trinityhome.org(\/|\/barts_cms\/)"  title="Bart's CMS \[Business Edition\] Version ([\d\.]{1,10}) \[(Stable|Beta)\]" >Bart's CMS<\/a>/, :offset=>1},
]
end
