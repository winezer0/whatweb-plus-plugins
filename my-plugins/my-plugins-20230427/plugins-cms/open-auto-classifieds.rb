Plugin.define do
name "Open-Auto-Classifieds"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "OAC is a free, open source vehicle classifieds manager. Intended to be easy to install and easy to administer, Open Auto Classifieds is based on open technologies such as the PHP scripting language, the MySQL database engine, XHTML eXtensible Hypertext Markup Language, and CSS Cascading Style Sheet styling."
website "http://www.openautoclassifieds.com/index.php"
dorks [
'"powered by Open Auto Classifieds"'
]
matches [
{:text=>'<p>Powered by <a href="http://www.openautoclassifieds.com/index.php">Open Auto Classifieds</a>'},
{:version=>/			<p>Powered by <a href="http:\/\/www.openautoclassifieds.com[^"]*">Open Auto Classifieds v([\d\.a-z]+)/},
{:version=>/			<p>Powered by Open Auto Classifieds v([\d\.a-z]+)/},
]
end
