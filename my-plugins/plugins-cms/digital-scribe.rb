Plugin.define do
name "Digital-Scribe"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Digital Scribe is a free, intuitive system designed to help teachers put student work and homework assignments online. Requires: PHP & MySQL."
website "http://www.digital-scribe.org/"
dorks [
'"copyright" "Digital Scribe * All Rights Reserved"'
]
matches [
{:text=>'<BR><A HREF=forgot.php?Submit2=1&email=>Forgot your password</A>?'},
{:text=>'<IMG SRC=/DigitalScribe/images/logosmall.gif width=158 height=63 alt="Digital Scribe Logo" border=0></a>'},
{:version=>/<BR><SPAN CLASS=legal>Copyright 2005-20[\d]{2} . <A HREF=http:\/\/www\.digital-scribe\.org>Digital Scribe v\.([^\s^<]+)<\/a> - All Rights Reserved<\/span>/},
]
end
