Plugin.define do
name "LiveZilla"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "LiveZilla, the Next Generation Live Help and Live Support System connects you to your website visitors. Use LiveZilla to provide Live Chats and monitor your website visitors in real-time."
website "http://www.livezilla.net/"
dorks [
'"LiveZilla - Freeware Live Support" intitle:"LiveZilla - Freeware Live Support - http://www.livezilla.net"'
]
matches [
{:certainty=>25, :text=>'<meta name="author" content="LiveZilla GmbH">'},
{:text=>'<!-- http://www.LiveZilla.net Tracking Code --><div id="livezilla_tracking" style="display:none"></div>'},
{:text=>'<address><a href="http://www.livezilla.net" target="_blank">LiveZilla - Freeware Live Support</a></address>'},
{:text=>'<td><br><br><br><strong>Thank you for using LiveZilla!</strong></td>'},
{:text=>'<title>LiveZilla - Freeware Live Support - http://www.livezilla.net</title>'},
{:version=>/<td colspan="2" width="400" align="center" (class|id)="lz_index_light_text">LiveZilla is a registered trademark<br>of LiveZilla GmbH<br><br>Version ([\d\.]+)<\/td>/, :offset=>1},
]
end
