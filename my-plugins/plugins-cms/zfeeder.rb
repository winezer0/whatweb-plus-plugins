Plugin.define do
name "zfeeder"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "check zFeeder if you want to show other's RSS content (news and much more) on your website, wapsite or use it on your PC (or intranet) as a news reader."
website "http://zvonnews.sourceforge.net/"
dorks [
'"powered by zFeeder" inurl:zfposition|zfcategory'
]
matches [
{:text=>'<span style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: xx-small;">powered by <a href="http://zvonnews.sourceforge.net">zFeeder</a></span>'},
]
end
