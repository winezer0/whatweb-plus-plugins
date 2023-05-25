Plugin.define do
name "WWWPhoto"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WWWPhoto is a tag based web photo gallery for PHP5 with GD-Library and MySQL or PostgreSQL. Since release 0.1.0 the navigation on the user view is Ajax driven by using the JSON implementation for PHP from Michal Migurski, Matt Knapp and Brett Stimmerman (http://pear.php.net/pepr/pepr-proposal-show.php?id=198)"
website "http://www.pburkhalter.net/wwwphoto.php"
matches [
{:text=>"<!-- sorry joshua, one little, small table is a must have :-) -->"},
{:text=>"http_navbar.open('get','navbar.rpc.php?user='+GLOBAL_USER+'&tag='+GLOBAL_TAG+'&id='+GLOBAL_ID+'&marked='+marked+'&timestamp='+new Date().getTime());"},
{:text=>'		<meta name="generator" content="WWWPhoto cvshead"> <!-- leave this for stats -->'},
{:text=>'<a href="http://www.pburkhalter.net/wwwphoto.php">powered by wwwphoto-cvshead</a>'},
]
end
