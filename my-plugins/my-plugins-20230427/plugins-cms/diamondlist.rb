Plugin.define do
name "DiamondList"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DiamondList is a free open source ruby on rails wishlist management program. It allows you to track one or more wishlists for one or more people, for any kind of event!"
website "http://www.hulihanapplications.com/projects/diamondlist"
dorks [
'"powered by DiamondList"'
]
matches [
{:text=>'Powered by <a href="http://www.hulihanapplications.com/projects/diamondlist"><b>DiamondList</b>'},
]
end
