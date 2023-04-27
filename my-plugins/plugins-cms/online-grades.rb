Plugin.define do
name "Online-Grades"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Online Grades is the leading free-software project that allows K-12+ student grades attendance information to be posted onto a dynamic web site. Online Grades is not a web-based gradebook. Instead, it accepts grade export information from several popular gradebook software programs such as Easy Grade Pro, Gradekeeper, Misty City's Grade Machine, and PGGP and places the grade information online securely."
website "http://www.onlinegrades.org/"
dorks [
'"Powered by Online Grades" -dork'
]
matches [
{:certainty=>75, :version=>/<meta name="keywords" content="Online Grades Version ([^\s^"]+)" \/>/},
{:regexp=>/<a href="http:\/\/www.onlinegrades.org"><img src="[^"^>]+\/images\/og.png"[^>]+alt="Powered by Online Grades"[^>]*><\/a>/},
{:text=>"<small><br /><em>Disclaimer</em>:  If you handed in an assignment or took a test today, don't expect the grade to be online immediately.  Teachers only update their grade books as needed.</small><ul><li>"},
{:text=>'<!-- STOP REMOVING LINES HERE IF REMOVING/CHANGING THE FOOTER -->'},
{:text=>'<!-- YOU CAN SAFELY REMOVE OR CHANGE ANYTHING BETWEEN THIS SECTION OF COMENTED CODE -->'},
{:text=>'<meta name="author" content="Online Grade Posting System -- http://www.onlinegrades.org" />'},
{:version=>/      <div class="center">[\r\n]      Online Grades Version:[\r\n]      ([^\s]+)      <\/div>/},
]
end
