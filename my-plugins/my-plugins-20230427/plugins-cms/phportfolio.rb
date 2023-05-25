Plugin.define do
name "PHPortfolio"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHPortfolio is a simple system for photographers to publish a portfolio. Requirements: Unix/Linux, Apache 1.3.x, PHP 4.2+ with GD 2 libraries, and MySQL 3.23+. PHP will need to have short_tags enabled (it usually is)."
website "http://www.outshine.com/software/phportfolio/index.php"
dorks [
'"Powered by PHPortfolio" inurl:photo.php'
]
matches [
{:regexp=>/style="color:gray;font-size:smaller">Powered by <a href="http:\/\/www\.outshine\.com\/phportfolio\/"[^>]*>PHPortfolio<\/a>\./},
]
end
