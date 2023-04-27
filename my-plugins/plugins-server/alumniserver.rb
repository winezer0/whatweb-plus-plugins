Plugin.define do
name "alumniserver"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Open Source Alumni software (PHP) for universities, schools and other organizations. Features include profile page, photo upload, messages, forum, job market. Admin pages include user management, content management, newsletter, website configuration."
website "http://sourceforge.net/projects/alumniserver/"
dorks [
'"AlumniServer project" inurl:AlumniServerProject.php',
'"This Alumni website runs with open source software from the AlumniServer project."'
]
matches [
{:certainty=>25, :text=>'<meta name="keywords" content="Alumni,Student,Network,Community,University">'},
{:certainty=>75, :ghdb=>'inurl:AlumniServerProject.php "AlumniServer project"'},
{:text=>'<div style="float:right;"><a href="AlumniServerProject.php" style="color:#c6cccd;margin:2px;margin-right:10px;">AlumniServer project</a></div>'},
{:text=>'<div style="margin:25px 15px 20px 15px;"><noscript><div style="color:red;margin-bottom: 15px;">Your browser does not support JavaScript!</div></noscript><h2>The AlumniServer project</h2>'},
{:text=>'AlumniServerProject.php'},
{:text=>'content="Alumni'},
]
end
