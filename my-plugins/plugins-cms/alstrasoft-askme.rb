Plugin.define do
name "AlstraSoft-AskMe"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "AskMe Pro is an expert knowledge management system that allows site owners to setup an expert advice service similar to highly popular sites like   Google Answers, Yahoo Answers and Kasamba.com."
website "http://www.alstrasoft.com/askme.htm"
dorks [
'"powered by AlstraSoft AskMe Pro" -vulnerability'
]
matches [
{:text=>"<br> Powered by <a href='http://www.alstrasoft.com' targe='_blank'><font color=blue>AlstraSoft AskMe Pro</font></a><br><br>"},
{:text=>'<a href="pass_recover.php">'},
{:text=>'<font size="+2">AskMe Pro Admin</font></b>'},
{:text=>'<td colspan=2 align="center"><a href="pass_recover.php">Forgotten Password?</a></td>'},
{:text=>'Enter details about your question and press the button bellow. All fields are required.'},
{:text=>'Powered By <a href="http://www.alstrasoft.com">AlstraSoft AskMe Pro</td></tr></table></body></a></html>'},
{:text=>'http://www.alstrasoft.com")'},
]
end
