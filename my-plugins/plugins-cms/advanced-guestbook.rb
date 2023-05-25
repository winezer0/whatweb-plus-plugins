Plugin.define do
name "Advanced-Guestbook"
authors [
"Andrew Horton",

]
version "0.3"
description "Web guestbook script. http://johnny.ihackstuff.com/ghdb/?function=detail&id=228 Version 2.2 is vulnerable http://www.securityfocus.com/bid/10209/info."
website "http://proxy2.de/scripts.php"
dorks [
'inurl:guestbook.php "Advanced GuestBook" "powered by phpbb"'
]
matches [
{:certainty=>75, :ghdb=>'intitle:guestbook "advanced guestbook 2.2" powered'},
{:certainty=>75, :text=>"Thank you for stopping by my site. Here you can leave your mark."},
{:name=>"powered by - regexp", :version=>/<a href="http:\/\/www.proxy2.de" target="_blank"><font color="#CCCCCC" size="1">(Advanced Guestbook) ([^<]+)/,
:offset=>1},
{:name=>"powered by", :version=>2.2, :regexp=>/<b>Advanced Guestbook 2.2<br>\s+Powered by PHP/},
]
end
