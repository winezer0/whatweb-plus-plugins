Plugin.define do
name "NoticeBoardPro"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "NoticeBoardPro is an online, web-based, notice board system"
website "http://www.noticeboardpro.com/"
dorks [
'"noticeboard" "View All Items" "View Items by Category"'
]
matches [
{:text=>'<A HREF="loginOutline.php" CLASS="Xref" style="margin-left:165; margin-right:10">[Sign In]</A>'},
{:text=>'<A HREF="registerOutline.php" CLASS="Xref" style="margin-right:10">[Register]</A>'},
{:version=>/<td align="center" colspan="4" height="38" width="572" bgcolor="#f5f5dc"><p class="copy">Version ([\d\.]+) -/},
]
end
