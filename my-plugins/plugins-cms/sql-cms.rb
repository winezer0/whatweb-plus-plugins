Plugin.define do
name "SQL-CMS"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SQL CMS is a Multi Award Winning web based Content Management System (CMS) for Microsoft SQL Server. SQL CMS is designed to be very simple to use, it was built with the end user in mind so is perfect for developers or their clients. - Requires: .Net Framework Installed (v3.5)"
website "http://www.developerinabox.com/"
matches [
{:text=>'<script type="text/javascript">var LoginAttempts=0;</script><link href="CSS/styles/default.css" type="text/css" rel="stylesheet" /></head>'},
{:text=>'<tr><td>Language</td><td><select id="ddlLanguage" onchange="location.href=\'admin.aspx?lang=\'+SelectedValue(\'ddlLanguage\')"><option value="English" selected="selected">English</option>'},
{:version=>/<a href="http:\/\/www.developerinabox.com" target="_blank"><img src="Img\/poweredby.png" style="position:absolute;right:0px;bottom:-30px;margin-top:2px;border:0px" title="SQLCMS v([\d\.]+)"\/><\/a>/},
]
end
