Plugin.define do
name "OneFileCMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "OneFileCMS is a flat, light, one file CMS (Content Management System) entirely contained in an easy-to-implement, highly customizable, database-less PHP script."
website "http://onefilecms.com/"
dorks [
'"This site powered by OneFileCMS"'
]
matches [
{:text=>'<p>This site powered by <a href="http://onefilecms.com/">OneFileCMS</a>. [<a href="onefilecms.php?f=index.php">Admin</a>]</p>'},
]
end
