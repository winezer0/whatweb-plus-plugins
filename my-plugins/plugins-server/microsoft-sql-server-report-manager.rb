Plugin.define do
name "microsoft-sql-server-report-manager"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Microsoft SQL Server Report Manager - web-based report access and management tool"
website "http://msdn.microsoft.com/en-us/library/ms157147%28v=sql.90%29.aspx"
dorks [
'inurl:"Reports/Pages/Folder.aspx" "intitle:"Report Manager"'
]
matches [
{:regexp=>/<a href="mailto:rcwebhlp@microsoft.com">Send feedback<\/a> to "rcwebhlp@microsoft.com" | <a href="index.htm" target="_top">Launch Help in Frameset<\/a>/},
{:search=>"headers[location]", :regexp=>/\/Reports\/Pages\/Folder\.aspx/i},
{:text=>'<body topmargin=0 id="bodyID" class = "dtBODY"><LINK REL="stylesheet" TYPE="text/css" HREF="sql.css">'},
{:text=>'<link href="/Reports/styles/ReportingServices.css"type="text/css" rel="stylesheet">'},
{:text=>'<script language="JScript" type="text/Javascript" src="/Reports/js/ReportingServices.js"></script>'},
{:text=>'<td valign="top" width="18px"><a href="/Reports/Pages/Folder.aspx?ItemPath='},
{:version=>/<META Name="Generator" CONTENT="Microsoft SQL Server Report Manager ([^"]+)">/},
]
end
