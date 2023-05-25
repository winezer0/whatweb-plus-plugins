Plugin.define do
name "SkaLinks"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SkaLinks - Free Links Exchange software"
website "http://www.skalinks.com/"
matches [
{:text=>'Powered by <a class=sub_cat href="http://www.skalinks.com" rel="nofollow">SkaLinks - Link Exchange Script'},
{:text=>'Powered by <a class=sub_cat href="http://www.skalinks.com">SkaLinks - Link Exchange Script'},
{:text=>'Powered by <a class=sub_cat rel="nofollow" href="http://www.skalinks.com">SkaLinks - Link Exchange Script'},
]
end
