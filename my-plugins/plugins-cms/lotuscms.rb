Plugin.define do
name "LotusCMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "LotusCMS (previously ArboroianCMS) brings to the forefront design and design integration into one of the most neglected CMS niches - Databaseless Web-Design and Development."
website "http://www.lotuscms.org/"
dorks [
'"Powered by LotusCMS"'
]
matches [
{:certainty=>25, :text=>'<meta name="keywords" content="LotusCMS" />'},
{:text=>"<!-- Please don't delete this. You can use this template for free and this is the only way that you can say thanks to me -->"},
{:text=>"<ul><li><a class='firstM' href='index.php?page=index'>Home</a></li><li><a class='normalM' href='index.php?system="},
{:text=>'<form method="POST" action="index.php?system=Admin&page=loginSubmit" id="contactform">'},
{:text=>'<title>.:Lotus Administration:.</title>'},
{:text=>'<title>LotusCMS Administration</title>'},
{:text=>'Powered by <a href="http://www.arboroia.com/cmsproject/">ArboroianCMS</a>'},
{:text=>'Powered by: <a href="http://www.lotuscms.org">LotusCMS</a>'},
]
end
