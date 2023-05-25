Plugin.define do
name "apid-browse"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "RAPID Browser - Managing news contents, sharing editorial and publishing to paper, web and mobile."
website "http://www.knowledgeview.co.uk/solutions/rapidbrowser"
dorks [
'intitle:"Welcome to Rapid Browser"'
]
matches [
{:text=>'<!-- ### Bullet table ### -->'},
{:text=>'<td align="right" valign="top"><input type="image" name="login" src="images/login_button.gif" alt="Login to Rapid Browser"></td>'},
{:text=>'<td rowspan="3" valign="top" bgcolor="#FF6600"><img src="images/copy_line.gif" width="175" height="80" alt="Real time news browser that lets you share and publish" border="0"></td>'},
{:version=>/<link rel="stylesheet" type="text\/css" href="styles\/typeStyle-en.css\?([^"]+)">/},
{:version=>/<title>Welcome to Rapid Browser ([\d\.]+)<\/title>/},
]
passive do
m=[]
m << { :name=>"Location HTTP Header" } if @headers["location"] =~ /command\?command_name=WebLoginCmd&view=login\.jsp$/
m
end
end
