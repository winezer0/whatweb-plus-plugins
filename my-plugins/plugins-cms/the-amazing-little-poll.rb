Plugin.define do
name "The-Amazing-Little-Poll"
authors [
"Brendan Coles <bcoles@gmail.com>", 

"Andrew Horton", 

]
version "0.2"
description "The Amazing Little Poll is a very simple php polling script."
website "http://www.mr-corner.com/LittlePoll/index.html"
dorks [
'intitle:"Little Poll Admin Center" "The Amazing Little Poll Admin Center"'
]
matches [
{:search=>"headers[set-cookie]", :regexp=>/pollidcookie=/},
{:text=>'<form action="lp_admin.php" method="post" name="form0">Admin Password:<input type="hidden" name="adminstep" value="1"><input type="Password" name="pwd" size="20"><br><input type="Submit" value="OK"></form>'},
{:url=>"lp_settings.inc", :string=>/\/\/ Change this password so no one else can access the lp_admin\.php via the web\s+\$pwd="([^"]+)";/},
{:version=>/<h1>The Amazing Little Poll Admin Center v([^<]+)<\/h1>/},
]
end
