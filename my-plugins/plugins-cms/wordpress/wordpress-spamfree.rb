Plugin.define do
name "wordpress-spamfree"
authors [
"Andrew Horton",

"Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "Wordpress SpamFree module. Get your WordPress Blog Spam-Free with this plugin. Normal users doesnt even know your using it. But it keeps away the spammers."
website "http://wordpress.org/extend/plugins/spam-free/"
matches [
{:version=>/<!-- Protected by \(WP-SpamFree\) v([\d\.]+) :: JS BEGIN -->/},
]
end
